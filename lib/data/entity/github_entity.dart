
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'github_entity.freezed.dart';
part 'github_entity.g.dart';

@freezed
class RepoItemEntity with _$RepoItemEntity {
  const factory RepoItemEntity({
    required String id,
    required String name,
    required String description,
    required int stargazersCount,
  }) = _RepoItemEntity;

  factory RepoItemEntity.fromJson(Map<String, dynamic> json) => _$RepoItemEntityFromJson(json);
}

@freezed
class RepoEntity with _$RepoEntity {
  const factory RepoEntity({
    required String id,
    required String name,
    required String description,
    required String language,
    required String sshUrl,
    required int stargazersCount,
    required List<ContributorEntity> contributors,
  }) = _RepoEntity;

  factory RepoEntity.fromJson(Map<String, dynamic> json) => _$RepoEntityFromJson(json);
}

@freezed
class ContributorEntity with _$ContributorEntity {
  const factory ContributorEntity({
    required String name,
    required String avatarUrl,
    required int contributions,
  }) = _ContributorEntity;

  factory ContributorEntity.fromJson(Map<String, dynamic> json) => _$ContributorEntityFromJson(json);
}