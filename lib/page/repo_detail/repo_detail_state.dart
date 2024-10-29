import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'repo_detail_state.freezed.dart';

@freezed
class RepoDetailState with _$RepoDetailState {
  const factory RepoDetailState({
    @Default('') String repoName,
    @Default(null) RepoEntity? entity,
    @Default(true) bool loading,
  }) = _RepoDetailState;
}

class RepoDetailStateNotifier extends StateNotifier<RepoDetailState> {
  final GithubRepository _githubRepository;

  RepoDetailStateNotifier(this._githubRepository) : super(const RepoDetailState());

  Future<void> initialize(String repoName) async {
    state = state.copyWith(repoName: repoName, loading: true);
    final entity = await _githubRepository.getUserRepoDetail(username: 'flutter', repoName: repoName);
    state = state.copyWith(entity: entity, loading: false);
  }
}

final repoDetailStateNotifierProvider = StateNotifierProvider.autoDispose<RepoDetailStateNotifier, RepoDetailState>((ref) {
  return RepoDetailStateNotifier(ref.read(githubRepositoryProvider));
});

final repoDetailStateProvider = Provider.autoDispose<RepoDetailState>((ref) {
  return ref.watch(repoDetailStateNotifierProvider);
});
