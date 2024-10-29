import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:github_riverpod/data/source/remote/github_api_url_provider.dart';
import 'package:github_riverpod/data/source/remote/github_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/environment/environment.dart';
import 'data/source/remote/github_remote_data_source_fake.dart';
import 'my_app.dart';

final devOverrides = [
  githubApiUrlProvider.overrideWithValue('https://api.dev.github.com/'),
  environmentProvider.overrideWithValue(Environment.dev),
];

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    ProviderScope(
      overrides: devOverrides,
      child: const MyApp(),
    ),
  );
}
