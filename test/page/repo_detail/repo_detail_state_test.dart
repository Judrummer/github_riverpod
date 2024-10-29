import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_state.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepository extends Mock implements GithubRepository {}

void main() {
  late MockGithubRepository mockGithubRepository;
  late RepoDetailStateNotifier notifier;

  setUp(() {
    mockGithubRepository = MockGithubRepository();
    notifier = RepoDetailStateNotifier(mockGithubRepository);
  });

  group('RepoDetailStateNotifier', () {
    const repoName = 'test_repo';
    const repoEntity = RepoEntity(
      id: '1',
      name: 'repo_name',
      description: 'repo_description',
      language: 'Dart',
      sshUrl: 'ssh_url',
      stargazersCount: 100,
      contributors: [],
    );

    test('initialize sets loading to true and then to false with entity', () async {
      when(() => mockGithubRepository.getUserRepoDetail(username: 'flutter', repoName: repoName)).thenAnswer((_) async => repoEntity);

      expect(notifier.state.loading, true);

      await notifier.initialize(repoName);

      expect(notifier.state.loading, false);
      expect(notifier.state.entity, repoEntity);
    });
  });
}
