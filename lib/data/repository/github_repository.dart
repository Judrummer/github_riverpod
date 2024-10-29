import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/mapper/github_entity_mapper.dart';
import 'package:github_riverpod/data/source/remote/github_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract interface class GithubRepository {
  Future<List<RepoItemEntity>> getUserRepos({required String username});

  Future<RepoEntity> getUserRepoDetail({required String username, required String repoName});
}

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource _remoteDataSource;

  GithubRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<RepoItemEntity>> getUserRepos({required String username}) async {
    return _remoteDataSource.getUserRepos(username: username).then((x) => x.map(mapToRepoItemEntity).toList());
  }

  @override
  Future<RepoEntity> getUserRepoDetail({required String username, required String repoName}) async {
    final repo = await _remoteDataSource.getUserRepoDetail(username: username, repoName: repoName);
    final contributors = await _remoteDataSource.getContributors(username: username, repoName: repoName);

    return RepoEntity(
      id: repo.id.toString(),
      name: repo.name ?? '',
      description: repo.description ?? '',
      language: repo.language ?? '',
      sshUrl: repo.sshUrl ?? '',
      stargazersCount: repo.stargazersCount ?? 0,
      contributors: contributors.map(mapToContributorEntity).toList(),
    );
  }
}

final githubRepositoryProvider = Provider<GithubRepository>((ref) {
  return GithubRepositoryImpl(ref.read(githubRemoteDataSourceProvider));
});
