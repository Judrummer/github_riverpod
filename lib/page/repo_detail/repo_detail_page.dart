import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_riverpod/page/repo_detail/component/repo_detail_language_text.dart';
import 'package:github_riverpod/page/repo_detail/component/repo_detail_url_text.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_selector.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'component/repo_detail_app_bar.dart';
import 'component/contributor_list_section.dart';

class RepoDetailPage extends HookConsumerWidget {
  final String repoName;

  const RepoDetailPage({
    required this.repoName,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await ref.read(repoDetailStateNotifierProvider.notifier).initialize(repoName);
      });
      return () {};
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const RepoDetailTitle(),
      ),
      body: Consumer(builder: (context, ref, _) {
        final loading = ref.watch(RepoDetailSelector.loading);
        if (loading) return const Center(child: CircularProgressIndicator());

        return const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: RepoDetailUrlText(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: RepoDetailLanguageText(),
            ),
            Expanded(child: ContributorListSection()),
          ],
        );
      }),
    );
  }
}
