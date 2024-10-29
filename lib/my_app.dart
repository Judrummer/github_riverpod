import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:github_riverpod/page/repo_list/repo_list_page.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/repo_list',
            builder: (context, state) => const RepoListPage(),
          ),
          GoRoute(
            path: '/repo_detail/:repoName',
            builder: (context, state) => RepoDetailPage(
              repoName: state.pathParameters['repoName'] ?? '',
            ),
          ),
        ],
        initialLocation: '/repo_list',
      ),
    );
  }
}
