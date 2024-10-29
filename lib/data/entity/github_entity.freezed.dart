// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoItemEntity _$RepoItemEntityFromJson(Map<String, dynamic> json) {
  return _RepoItemEntity.fromJson(json);
}

/// @nodoc
mixin _$RepoItemEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;

  /// Serializes this RepoItemEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoItemEntityCopyWith<RepoItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoItemEntityCopyWith<$Res> {
  factory $RepoItemEntityCopyWith(
          RepoItemEntity value, $Res Function(RepoItemEntity) then) =
      _$RepoItemEntityCopyWithImpl<$Res, RepoItemEntity>;
  @useResult
  $Res call({String id, String name, String description, int stargazersCount});
}

/// @nodoc
class _$RepoItemEntityCopyWithImpl<$Res, $Val extends RepoItemEntity>
    implements $RepoItemEntityCopyWith<$Res> {
  _$RepoItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoItemEntityImplCopyWith<$Res>
    implements $RepoItemEntityCopyWith<$Res> {
  factory _$$RepoItemEntityImplCopyWith(_$RepoItemEntityImpl value,
          $Res Function(_$RepoItemEntityImpl) then) =
      __$$RepoItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description, int stargazersCount});
}

/// @nodoc
class __$$RepoItemEntityImplCopyWithImpl<$Res>
    extends _$RepoItemEntityCopyWithImpl<$Res, _$RepoItemEntityImpl>
    implements _$$RepoItemEntityImplCopyWith<$Res> {
  __$$RepoItemEntityImplCopyWithImpl(
      _$RepoItemEntityImpl _value, $Res Function(_$RepoItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
  }) {
    return _then(_$RepoItemEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoItemEntityImpl
    with DiagnosticableTreeMixin
    implements _RepoItemEntity {
  const _$RepoItemEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.stargazersCount});

  factory _$RepoItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoItemEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int stargazersCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoItemEntity(id: $id, name: $name, description: $description, stargazersCount: $stargazersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepoItemEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('stargazersCount', stargazersCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, stargazersCount);

  /// Create a copy of RepoItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoItemEntityImplCopyWith<_$RepoItemEntityImpl> get copyWith =>
      __$$RepoItemEntityImplCopyWithImpl<_$RepoItemEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoItemEntityImplToJson(
      this,
    );
  }
}

abstract class _RepoItemEntity implements RepoItemEntity {
  const factory _RepoItemEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final int stargazersCount}) = _$RepoItemEntityImpl;

  factory _RepoItemEntity.fromJson(Map<String, dynamic> json) =
      _$RepoItemEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get stargazersCount;

  /// Create a copy of RepoItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoItemEntityImplCopyWith<_$RepoItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepoEntity _$RepoEntityFromJson(Map<String, dynamic> json) {
  return _RepoEntity.fromJson(json);
}

/// @nodoc
mixin _$RepoEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get sshUrl => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;
  List<ContributorEntity> get contributors =>
      throw _privateConstructorUsedError;

  /// Serializes this RepoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoEntityCopyWith<RepoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoEntityCopyWith<$Res> {
  factory $RepoEntityCopyWith(
          RepoEntity value, $Res Function(RepoEntity) then) =
      _$RepoEntityCopyWithImpl<$Res, RepoEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String language,
      String sshUrl,
      int stargazersCount,
      List<ContributorEntity> contributors});
}

/// @nodoc
class _$RepoEntityCopyWithImpl<$Res, $Val extends RepoEntity>
    implements $RepoEntityCopyWith<$Res> {
  _$RepoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? sshUrl = null,
    Object? stargazersCount = null,
    Object? contributors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      contributors: null == contributors
          ? _value.contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoEntityImplCopyWith<$Res>
    implements $RepoEntityCopyWith<$Res> {
  factory _$$RepoEntityImplCopyWith(
          _$RepoEntityImpl value, $Res Function(_$RepoEntityImpl) then) =
      __$$RepoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String language,
      String sshUrl,
      int stargazersCount,
      List<ContributorEntity> contributors});
}

/// @nodoc
class __$$RepoEntityImplCopyWithImpl<$Res>
    extends _$RepoEntityCopyWithImpl<$Res, _$RepoEntityImpl>
    implements _$$RepoEntityImplCopyWith<$Res> {
  __$$RepoEntityImplCopyWithImpl(
      _$RepoEntityImpl _value, $Res Function(_$RepoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? sshUrl = null,
    Object? stargazersCount = null,
    Object? contributors = null,
  }) {
    return _then(_$RepoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      contributors: null == contributors
          ? _value._contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoEntityImpl with DiagnosticableTreeMixin implements _RepoEntity {
  const _$RepoEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.language,
      required this.sshUrl,
      required this.stargazersCount,
      required final List<ContributorEntity> contributors})
      : _contributors = contributors;

  factory _$RepoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String language;
  @override
  final String sshUrl;
  @override
  final int stargazersCount;
  final List<ContributorEntity> _contributors;
  @override
  List<ContributorEntity> get contributors {
    if (_contributors is EqualUnmodifiableListView) return _contributors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contributors);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoEntity(id: $id, name: $name, description: $description, language: $language, sshUrl: $sshUrl, stargazersCount: $stargazersCount, contributors: $contributors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepoEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('sshUrl', sshUrl))
      ..add(DiagnosticsProperty('stargazersCount', stargazersCount))
      ..add(DiagnosticsProperty('contributors', contributors));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            const DeepCollectionEquality()
                .equals(other._contributors, _contributors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      language,
      sshUrl,
      stargazersCount,
      const DeepCollectionEquality().hash(_contributors));

  /// Create a copy of RepoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoEntityImplCopyWith<_$RepoEntityImpl> get copyWith =>
      __$$RepoEntityImplCopyWithImpl<_$RepoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoEntityImplToJson(
      this,
    );
  }
}

abstract class _RepoEntity implements RepoEntity {
  const factory _RepoEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final String language,
      required final String sshUrl,
      required final int stargazersCount,
      required final List<ContributorEntity> contributors}) = _$RepoEntityImpl;

  factory _RepoEntity.fromJson(Map<String, dynamic> json) =
      _$RepoEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get language;
  @override
  String get sshUrl;
  @override
  int get stargazersCount;
  @override
  List<ContributorEntity> get contributors;

  /// Create a copy of RepoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoEntityImplCopyWith<_$RepoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContributorEntity _$ContributorEntityFromJson(Map<String, dynamic> json) {
  return _ContributorEntity.fromJson(json);
}

/// @nodoc
mixin _$ContributorEntity {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  int get contributions => throw _privateConstructorUsedError;

  /// Serializes this ContributorEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContributorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContributorEntityCopyWith<ContributorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributorEntityCopyWith<$Res> {
  factory $ContributorEntityCopyWith(
          ContributorEntity value, $Res Function(ContributorEntity) then) =
      _$ContributorEntityCopyWithImpl<$Res, ContributorEntity>;
  @useResult
  $Res call({String name, String avatarUrl, int contributions});
}

/// @nodoc
class _$ContributorEntityCopyWithImpl<$Res, $Val extends ContributorEntity>
    implements $ContributorEntityCopyWith<$Res> {
  _$ContributorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContributorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? contributions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contributions: null == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContributorEntityImplCopyWith<$Res>
    implements $ContributorEntityCopyWith<$Res> {
  factory _$$ContributorEntityImplCopyWith(_$ContributorEntityImpl value,
          $Res Function(_$ContributorEntityImpl) then) =
      __$$ContributorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatarUrl, int contributions});
}

/// @nodoc
class __$$ContributorEntityImplCopyWithImpl<$Res>
    extends _$ContributorEntityCopyWithImpl<$Res, _$ContributorEntityImpl>
    implements _$$ContributorEntityImplCopyWith<$Res> {
  __$$ContributorEntityImplCopyWithImpl(_$ContributorEntityImpl _value,
      $Res Function(_$ContributorEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContributorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? contributions = null,
  }) {
    return _then(_$ContributorEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contributions: null == contributions
          ? _value.contributions
          : contributions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContributorEntityImpl
    with DiagnosticableTreeMixin
    implements _ContributorEntity {
  const _$ContributorEntityImpl(
      {required this.name,
      required this.avatarUrl,
      required this.contributions});

  factory _$ContributorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContributorEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final int contributions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContributorEntity(name: $name, avatarUrl: $avatarUrl, contributions: $contributions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContributorEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('contributions', contributions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContributorEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.contributions, contributions) ||
                other.contributions == contributions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl, contributions);

  /// Create a copy of ContributorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContributorEntityImplCopyWith<_$ContributorEntityImpl> get copyWith =>
      __$$ContributorEntityImplCopyWithImpl<_$ContributorEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContributorEntityImplToJson(
      this,
    );
  }
}

abstract class _ContributorEntity implements ContributorEntity {
  const factory _ContributorEntity(
      {required final String name,
      required final String avatarUrl,
      required final int contributions}) = _$ContributorEntityImpl;

  factory _ContributorEntity.fromJson(Map<String, dynamic> json) =
      _$ContributorEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  int get contributions;

  /// Create a copy of ContributorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContributorEntityImplCopyWith<_$ContributorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
