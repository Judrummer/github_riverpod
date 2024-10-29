// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoItemEntityImpl _$$RepoItemEntityImplFromJson(Map<String, dynamic> json) =>
    _$RepoItemEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      stargazersCount: (json['stargazersCount'] as num).toInt(),
    );

Map<String, dynamic> _$$RepoItemEntityImplToJson(
        _$RepoItemEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'stargazersCount': instance.stargazersCount,
    };

_$RepoEntityImpl _$$RepoEntityImplFromJson(Map<String, dynamic> json) =>
    _$RepoEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      sshUrl: json['sshUrl'] as String,
      stargazersCount: (json['stargazersCount'] as num).toInt(),
      contributors: (json['contributors'] as List<dynamic>)
          .map((e) => ContributorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepoEntityImplToJson(_$RepoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'language': instance.language,
      'sshUrl': instance.sshUrl,
      'stargazersCount': instance.stargazersCount,
      'contributors': instance.contributors,
    };

_$ContributorEntityImpl _$$ContributorEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ContributorEntityImpl(
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String,
      contributions: (json['contributions'] as num).toInt(),
    );

Map<String, dynamic> _$$ContributorEntityImplToJson(
        _$ContributorEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'contributions': instance.contributions,
    };
