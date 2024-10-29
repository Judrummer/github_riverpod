import 'package:hooks_riverpod/hooks_riverpod.dart';

final githubApiUrlProvider = Provider<String>((ref) {
  return 'https://api.github.com/';
});
