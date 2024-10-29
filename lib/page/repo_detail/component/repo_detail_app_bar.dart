import 'package:flutter/material.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoDetailTitle extends HookConsumerWidget {
  const RepoDetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repoName = ref.watch(RepoDetailSelector.repoName);
    return Text(repoName);
  }
}
