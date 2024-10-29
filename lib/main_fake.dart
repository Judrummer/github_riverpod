import 'package:flutter/material.dart';
import 'package:github_riverpod/data/source/remote/github_api_key_provider.dart';
import 'package:github_riverpod/data/source/remote/github_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/environment/environment.dart';
import 'data/source/remote/github_remote_data_source_fake.dart';
import 'my_app.dart';

final fakeOverrides = [
  githubRemoteDataSourceProvider.overrideWithValue(GithubRemoteDataSourceFake()),
  environmentProvider.overrideWithValue(Environment.fake),
  githubApiKeyProvider.overrideWithValue(''),
];

void main() {
  runApp(
    ProviderScope(
      overrides: fakeOverrides,
      child: const MyApp(),
    ),
  );
}
