import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Environment {
  dev,
  uat,
  prod,
  fake,
}

final environmentProvider = Provider<Environment>((ref) {
  return Environment.prod;
});
