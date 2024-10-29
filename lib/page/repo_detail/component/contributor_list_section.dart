import 'package:flutter/material.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_selector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContributorListSection extends HookConsumerWidget {
  const ContributorListSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contributors = ref.watch(RepoDetailSelector.contributors);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Contributors',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: contributors.length,
            itemBuilder: (context, index) {
              final contributor = contributors[index];
              return ListTile(
                title: Text(contributor.name),
                subtitle: Text('Contributions: ${contributor.contributions}'),
              );
            },
          ),
        ),
      ],
    );
  }
}
