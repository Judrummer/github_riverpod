import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_riverpod/page/repo_list/repo_list_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'component/repo_item.dart';
import 'repo_list_state.dart';

class RepoListPage extends HookConsumerWidget {
  const RepoListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await ref.read(repoListStateNotifierProvider.notifier).refresh();
      });
      return () {};
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RepoList'),
      ),
      body: Consumer(builder: (context, ref, _) {
        final items = ref.watch(RepoListSelector.items);
        final loading = ref.watch(RepoListSelector.loading);
        final errorMessage = ref.watch(RepoListSelector.errorMessage);

        if (errorMessage != null) return Center(child: Text('Error: $errorMessage'));
        if (loading) return const Center(child: CircularProgressIndicator());

        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => RepoItem(items[index]),
        );
      }),
    );
  }
}
