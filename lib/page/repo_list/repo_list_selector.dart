import 'package:github_riverpod/page/repo_list/repo_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';

class RepoItemState extends Equatable {
  final String id;
  final String name;
  final String description;

  const RepoItemState({
    required this.id,
    required this.name,
    required this.description,
  });

  @override
  List<Object?> get props => [id, name, description];
}

class RepoListSelector {
  static final loading = Provider.autoDispose<bool>((ref) {
    final loading = ref.watch(repoListStateProvider.select((x) => x.loading));
    return loading;
  });

  static final items = Provider.autoDispose<List<RepoItemState>>((ref) {
    final items = ref.watch(repoListStateProvider.select((x) => x.items));
    return items
        .map((x) => RepoItemState(
              id: x.id,
              name: x.name,
              description: x.description,
            ))
        .toList();
  });

  static final errorMessage = Provider.autoDispose<String?>((ref) {
    final errorMessage = ref.watch(repoListStateProvider.select((x) => x.errorMessage));
    return errorMessage;
  });
}
