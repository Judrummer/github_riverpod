import 'package:dio/dio.dart';
import 'package:github_riverpod/data/service/dio.dart';
import 'package:github_riverpod/data/source/remote/github_api_url_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'github_api_key_provider.dart';
import 'response/github_response.dart';

abstract interface class GithubRemoteDataSource {
  Future<UserResponse> getUser({required String username});

  Future<List<RepoResponse>> getUserRepos({required String username});

  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName});

  Future<List<ContributorResponse>> getContributors({required String username, required String repoName});
}

class GithubRemoteDataSourceImpl implements GithubRemoteDataSource {
  final Dio dio;
  final String githubApiUrl;
  final String apiKey;

  GithubRemoteDataSourceImpl(this.dio, this.githubApiUrl, this.apiKey);

  @override
  Future<List<ContributorResponse>> getContributors({required String username, required String repoName}) {
    return dio.get(
      '${githubApiUrl}repos/$username/$repoName/contributors',
      queryParameters: {'per_page': 10, 'page': 0},
      options: Options(headers: {'Authorization': 'Bearer $apiKey'}),
    ).then((response) => (response.data as List).map((json) => ContributorResponse.fromJson(json)).toList());
  }

  @override
  Future<UserResponse> getUser({required String username}) {
    return dio
        .get(
          '${githubApiUrl}users/$username',
          options: Options(headers: {'Authorization': 'Bearer $apiKey'}),
        )
        .then((response) => UserResponse.fromJson(response.data));
  }

  @override
  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName}) {
    return dio
        .get(
          '${githubApiUrl}repos/$username/$repoName',
          options: Options(headers: {'Authorization': 'Bearer $apiKey'}),
        )
        .then((response) => RepoDetailResponse.fromJson(response.data));
  }

  @override
  Future<List<RepoResponse>> getUserRepos({required String username}) {
    return dio
        .get(
          '${githubApiUrl}users/$username/repos',
          queryParameters: {'per_page': 10, 'page': 0},
          options: Options(headers: {'Authorization': 'Bearer $apiKey'}),
        )
        .then((response) => (response.data as List).map((json) => RepoResponse.fromJson(json)).toList());
  }
}

final githubRemoteDataSourceProvider = Provider<GithubRemoteDataSource>((ref) {
  return GithubRemoteDataSourceImpl(
    ref.read(dioProvider),
    ref.read(githubApiUrlProvider),
    ref.read(githubApiKeyProvider),
  );
});
