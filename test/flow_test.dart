import 'package:flutter_test/flutter_test.dart';
import 'package:github_riverpod/main_fake.dart';
import 'package:github_riverpod/my_app.dart';
import 'package:github_riverpod/page/repo_detail/component/repo_detail_language_text.dart';
import 'package:github_riverpod/page/repo_detail/component/repo_detail_url_text.dart';
import 'package:github_riverpod/page/repo_detail/repo_detail_page.dart';
import 'package:github_riverpod/page/repo_list/component/repo_item.dart';
import 'package:github_riverpod/page/repo_list/repo_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('Flow Test', () {
    testWidgets('Happy Path', (tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(
          ProviderScope(
            overrides: fakeOverrides,
            child: const MyApp(),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.byType(RepoListPage), findsOne);

        final githubRepoItemFinder = find.widgetWithText(RepoItem, 'flutter');
        expect(githubRepoItemFinder, findsOne);
        await tester.tap(githubRepoItemFinder);

        await tester.pumpAndSettle();

        expect(find.byType(RepoDetailPage), findsOne);

        expect(find.widgetWithText(RepoDetailUrlText, 'git@github.com:flutter/flutter.git'), findsOne);
        expect(find.widgetWithText(RepoDetailLanguageText, 'Dart'), findsOne);
      });
    });
  });
}
