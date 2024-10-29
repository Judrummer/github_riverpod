import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:github_riverpod/page/repo_list/repo_list_state.dart';
import 'package:github_riverpod/page/repo_list/repo_list_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepository extends Mock implements GithubRepository {}

void main() {
  group('RepoListSelector', () {
    test('loading provider should return the correct loading state', () {
      final container = ProviderContainer(
        overrides: [
          repoListStateProvider.overrideWithValue(
            const RepoListState(loading: true),
          ),
        ],
      );

      final loading = container.read(RepoListSelector.loading);
      expect(loading, true);
    });

    test('items provider should return the correct list of items', () {
      final repoItems = [
        const RepoItemEntity(id: '1', name: 'repo1', description: 'desc1', stargazersCount: 100),
        const RepoItemEntity(id: '2', name: 'repo2', description: 'desc2', stargazersCount: 200),
      ];

      final container = ProviderContainer(
        overrides: [
          repoListStateProvider.overrideWithValue(
            RepoListState(items: repoItems),
          ),
        ],
      );

      final items = container.read(RepoListSelector.items);
      expect(items.length, 2);
      expect(items[0].id, '1');
      expect(items[0].name, 'repo1');
      expect(items[0].description, 'desc1');
      expect(items[1].id, '2');
      expect(items[1].name, 'repo2');
      expect(items[1].description, 'desc2');
    });

    test('errorMessage provider should return the correct error message', () {
      final container = ProviderContainer(
        overrides: [
          repoListStateProvider.overrideWithValue(
            const RepoListState(errorMessage: 'Error occurred'),
          ),
        ],
      );

      final errorMessage = container.read(RepoListSelector.errorMessage);
      expect(errorMessage, 'Error occurred');
    });
  });
}
