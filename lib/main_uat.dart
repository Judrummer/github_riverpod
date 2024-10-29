import 'package:flutter/material.dart';
import 'package:github_riverpod/data/source/remote/github_api_url_provider.dart';
import 'package:github_riverpod/data/source/remote/github_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/environment/environment.dart';
import 'data/source/remote/github_remote_data_source_fake.dart';
import 'my_app.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        githubApiUrlProvider.overrideWithValue('https://api.uat.github.com/'),
        environmentProvider.overrideWithValue(Environment.uat),
      ],
      child: const MyApp(),
    ),
  );
}
