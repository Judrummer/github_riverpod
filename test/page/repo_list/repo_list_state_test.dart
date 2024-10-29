import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:github_riverpod/page/repo_list/repo_list_state.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepository extends Mock implements GithubRepository {}

void main() {
  late MockGithubRepository mockGithubRepository;
  late RepoListStateNotifier notifier;

  setUp(() {
    mockGithubRepository = MockGithubRepository();
    notifier = RepoListStateNotifier(mockGithubRepository);
  });

  group('RepoListStateNotifier', () {
    const repoItems = [
      RepoItemEntity(id: '1', name: 'repo1', description: 'desc1', stargazersCount: 100),
      RepoItemEntity(id: '2', name: 'repo2', description: 'desc2', stargazersCount: 200),
    ];

    test('refresh sets loading to true and then to false with items', () async {
      when(() => mockGithubRepository.getUserRepos(username: 'flutter')).thenAnswer((_) async => repoItems);

      expect(notifier.state.loading, true);

      await notifier.refresh();

      expect(notifier.state.loading, false);
      expect(notifier.state.items, repoItems);
    });

    test('refresh sets loading to true and then to false with error message on failure', () async {
      const errorMessage = 'Failed to fetch repos';
      when(() => mockGithubRepository.getUserRepos(username: 'flutter')).thenThrow(Exception(errorMessage));

      expect(notifier.state.loading, true);

      await notifier.refresh();

      expect(notifier.state.loading, false);
      expect(notifier.state.errorMessage, 'Failed to fetch repos');
    });

    test('onClickRepoItem returns OpenRepoDetailPage when repo is found', () async {
      notifier = RepoListStateNotifier(mockGithubRepository)..setState((s) => s.copyWith(items: repoItems));

      final result = await notifier.onClickRepoItem('1');

      expect(result, isA<OpenRepoDetailPage>());
      expect((result as OpenRepoDetailPage).repoName, 'repo1');
    });

    test('onClickRepoItem returns None when repo is not found', () async {
      notifier = RepoListStateNotifier(mockGithubRepository)..setState((s) => s.copyWith(items: repoItems));

      final result = await notifier.onClickRepoItem('3');

      expect(result, isA<None>());
    });
  });
}