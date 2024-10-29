import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/data/mapper/github_entity_mapper.dart';
import 'package:github_riverpod/data/source/remote/response/github_response.dart';

void main() {
  group('GithubEntityMapper', () {
    test('mapToRepoItemEntity should map RepoResponse to RepoItemEntity', () {
      const repoResponse = RepoResponse(
        id: 1,
        name: 'repo_name',
        description: 'repo_description',
        stargazersCount: 100,
      );

      final result = mapToRepoItemEntity(repoResponse);

      expect(result.id, '1');
      expect(result.name, 'repo_name');
      expect(result.description, 'repo_description');
      expect(result.stargazersCount, 100);
    });

    test('mapToContributorEntity should map ContributorResponse to ContributorEntity', () {
      const contributorResponse = ContributorResponse(
        login: 'contributor_name',
        avatarUrl: 'avatar_url',
        contributions: 50,
      );

      final result = mapToContributorEntity(contributorResponse);

      expect(result.name, 'contributor_name');
      expect(result.avatarUrl, 'avatar_url');
      expect(result.contributions, 50);
    });

    test('mapToRepoEntity should map RepoDetailResponse and List<ContributorResponse> to RepoEntity', () {
      const repoDetailResponse = RepoDetailResponse(
        id: 1,
        name: 'repo_name',
        description: 'repo_description',
        language: 'Dart',
        sshUrl: 'ssh_url',
        stargazersCount: 100,
      );

      const contributorResponses = [
        ContributorResponse(
          login: 'contributor_name',
          avatarUrl: 'avatar_url',
          contributions: 50,
        ),
      ];

      final result = mapToRepoEntity(repoDetailResponse, contributorResponses);

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
