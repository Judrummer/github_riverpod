import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:github_riverpod/data/source/remote/github_remote_data_source.dart';
import 'package:github_riverpod/data/source/remote/response/github_response.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRemoteDataSource extends Mock implements GithubRemoteDataSource {}

void main() {
  late GithubRepositoryImpl repository;
  late MockGithubRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockGithubRemoteDataSource();
    repository = GithubRepositoryImpl(mockRemoteDataSource);
  });

  group('GithubRepositoryImpl', () {
    const username = 'test_user';
    const repoName = 'test_repo';

    test('getUserRepos should return a list of RepoItemEntity', () async {
      // arrange
      final repoResponses = [
        RepoResponse(id: 1, name: 'repo1', description: 'desc1', stargazersCount: 100),
        RepoResponse(id: 2, name: 'repo2', description: 'desc2', stargazersCount: 200),
      ];
      when(() => mockRemoteDataSource.getUserRepos(username: username))
          .thenAnswer((_) async => repoResponses);

      // act
      final result = await repository.getUserRepos(username: username);

      // assert
      expect(result.length, 2);
      expect(result[0].id, '1');
      expect(result[0].name, 'repo1');
      expect(result[0].description, 'desc1');
      expect(result[0].stargazersCount, 100);
      expect(result[1].id, '2');
      expect(result[1].name, 'repo2');
      expect(result[1].description, 'desc2');
      expect(result[1].stargazersCount, 200);
    });

    test('getUserRepoDetail should return a RepoEntity', () async {
      // arrange
      final repoDetailResponse = RepoDetailResponse(
        id: 1,
        name: 'repo_name',
        description: 'repo_description',
        language: 'Dart',
        sshUrl: 'ssh_url',
        stargazersCount: 100,
      );

      final contributorResponses = [
        ContributorResponse(login: 'contributor_name', avatarUrl: 'avatar_url', contributions: 50),
      ];

      when(() => mockRemoteDataSource.getUserRepoDetail(username: username, repoName: repoName))
          .thenAnswer((_) async => repoDetailResponse);

      when(() => mockRemoteDataSource.getContributors(username: username, repoName: repoName))
          .thenAnswer((_) async => contributorResponses);

      // act
      final result = await repository.getUserRepoDetail(username: username, repoName: repoName);

      // assert
      expect(result.id, '1');
      expect(result.name, 'repo_name');
      expect(result.description, 'repo_description');
      expect(result.language, 'Dart');
      expect(result.sshUrl, 'ssh_url');
      expect(result.stargazersCount, 100);
      expect(result.contributors.length, 1);
      expect(result.contributors[0].name, 'contributor_name');
    });
  });
}