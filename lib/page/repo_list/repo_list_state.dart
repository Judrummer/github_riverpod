import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_riverpod/data/entity/github_entity.dart';
import 'package:github_riverpod/data/repository/github_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'repo_list_state.freezed.dart';

@freezed
class RepoListState with _$RepoListState {
  const factory RepoListState({
    @Default([]) List<RepoItemEntity> items,
    @Default(true) bool loading,
    @Default(null) String? errorMessage,
  }) = _RepoListState;
}

@freezed
sealed class OnClickRepoItemResult with _$OnClickRepoItemResult {
  const factory OnClickRepoItemResult.openRepoDetailPage({required String repoName}) = OpenRepoDetailPage;

  const factory OnClickRepoItemResult.none() = None;
}

class RepoListStateNotifier extends StateNotifier<RepoListState> {
  final GithubRepository _githubRepository;

  RepoListStateNotifier(this._githubRepository) : super(const RepoListState());

  Future<void> refresh() async {
    setState((s) => s.copyWith(loading: true, errorMessage: null));
    try {
      final items = await _githubRepository.getUserRepos(username: 'flutter');
      setState((s) => s.copyWith(loading: false, items: items));
    } catch (e) {
      // TODO: map error message
      setState((s) => s.copyWith(loading: false, errorMessage: e.toString()));
    }
  }

  Future<OnClickRepoItemResult> onClickRepoItem(String id) async {
    final repoName = state.items.firstWhereOrNull((x) => x.id == id)?.name;
    if (repoName == null) return None();
    return OpenRepoDetailPage(repoName: repoName);
  }

  @protected
  @visibleForTesting
  void setState(RepoListState Function(RepoListState s) reducer) {
    state = reducer(state);
  }
}

final repoListStateNotifierProvider = StateNotifierProvider.autoDispose<RepoListStateNotifier, RepoListState>((ref) {
  return RepoListStateNotifier(ref.read(githubRepositoryProvider));
});

final repoListStateProvider = Provider.autoDispose<RepoListState>((ref) {
  return ref.watch(repoListStateNotifierProvider);
});
