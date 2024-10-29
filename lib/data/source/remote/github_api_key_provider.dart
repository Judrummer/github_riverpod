import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final githubApiKeyProvider = Provider<String>((ref) {
  return dotenv.env['GITHUB_API_KEY'] ?? '';
});
