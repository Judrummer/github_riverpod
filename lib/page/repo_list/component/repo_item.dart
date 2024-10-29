import 'package:flutter/material.dart';
import 'package:github_riverpod/page/repo_list/repo_list_selector.dart';
import 'package:github_riverpod/page/repo_list/repo_list_state.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoItem extends HookConsumerWidget {
  final RepoItemState state;

  const RepoItem(
    this.state, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        final result = await ref.read(repoListStateNotifierProvider.notifier).onClickRepoItem(state.id);

        if (!context.mounted) return;

        switch (result) {
          case OpenRepoDetailPage():
            context.push('/repo_detail/${result.repoName}');
          case None():
            return;
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(state.name),
            Text(state.description),
          ],
        ),
      ),
    );
  }
}
