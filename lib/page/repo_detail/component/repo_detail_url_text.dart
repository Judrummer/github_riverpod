import 'package:flutter/material.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoDetailUrlText extends HookConsumerWidget {
  const RepoDetailUrlText({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(RepoDetailSelector.url);
    return Row(
      children: [
        Text(
          'URL',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        const SizedBox(width: 16),
        Text(url),
      ],
    );
  }
}
