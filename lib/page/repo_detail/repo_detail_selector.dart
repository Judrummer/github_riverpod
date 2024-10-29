import 'package:equatable/equatable.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContributorItemState extends Equatable {
  final String name;
  final String contributions;

  const ContributorItemState({
    required this.name,
    required this.contributions,
  });

  @override
  List<Object?> get props => [name, contributions];
}

class RepoDetailSelector {
  static final loading = Provider.autoDispose<bool>((ref) {
    final loading = ref.watch(repoDetailStateProvider.select((x) => x.loading));
    return loading;
  });

  static final contributors = Provider.autoDispose<List<ContributorItemState>>((ref) {
    final contributors = ref.watch(repoDetailStateProvider.select((x) => x.entity?.contributors));
    return contributors
            ?.map((x) => ContributorItemState(
                  name: x.name,
                  contributions: x.contributions.toString(),
                ))
            .toList() ??
        [];
  });

  static final repoName = Provider.autoDispose<String>((ref) {
    final repoName = ref.watch(repoDetailStateProvider.select((x) => x.repoName));
    return repoName;
  });

  static final url = Provider.autoDispose<String>((ref) {
    final entity = ref.watch(repoDetailStateProvider.select((x) => x.entity));
    return entity?.sshUrl ?? '';
  });

  static final language = Provider.autoDispose<String>((ref) {
    final entity = ref.watch(repoDetailStateProvider.select((x) => x.entity));
    return entity?.language ?? '';
  });
}
