import 'package:flutter/material.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepoDetailLanguageText extends HookConsumerWidget {
  const RepoDetailLanguageText({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(RepoDetailSelector.language);
    return Row(
      children: [
        Text(
          'Language',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        const SizedBox(width: 16),
        Text(language),
      ],
    );
  }
}
