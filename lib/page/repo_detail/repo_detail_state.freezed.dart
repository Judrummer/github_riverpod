// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepoDetailState {
  String get repoName => throw _privateConstructorUsedError;
  RepoEntity? get entity => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoDetailStateCopyWith<RepoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailStateCopyWith<$Res> {
  factory $RepoDetailStateCopyWith(
          RepoDetailState value, $Res Function(RepoDetailState) then) =
      _$RepoDetailStateCopyWithImpl<$Res, RepoDetailState>;
  @useResult
  $Res call({String repoName, RepoEntity? entity, bool loading});

  $RepoEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class _$RepoDetailStateCopyWithImpl<$Res, $Val extends RepoDetailState>
    implements $RepoDetailStateCopyWith<$Res> {
  _$RepoDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoName = null,
    Object? entity = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RepoEntity?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepoEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $RepoEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoDetailStateImplCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$RepoDetailStateImplCopyWith(_$RepoDetailStateImpl value,
          $Res Function(_$RepoDetailStateImpl) then) =
      __$$RepoDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String repoName, RepoEntity? entity, bool loading});

  @override
  $RepoEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$RepoDetailStateImplCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$RepoDetailStateImpl>
    implements _$$RepoDetailStateImplCopyWith<$Res> {
  __$$RepoDetailStateImplCopyWithImpl(
      _$RepoDetailStateImpl _value, $Res Function(_$RepoDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoName = null,
    Object? entity = freezed,
    Object? loading = null,
  }) {
    return _then(_$RepoDetailStateImpl(
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RepoEntity?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RepoDetailStateImpl implements _RepoDetailState {
  const _$RepoDetailStateImpl(
      {this.repoName = '', this.entity = null, this.loading = true});

  @override
  @JsonKey()
  final String repoName;
  @override
  @JsonKey()
  final RepoEntity? entity;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'RepoDetailState(repoName: $repoName, entity: $entity, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoDetailStateImpl &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName, entity, loading);

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoDetailStateImplCopyWith<_$RepoDetailStateImpl> get copyWith =>
      __$$RepoDetailStateImplCopyWithImpl<_$RepoDetailStateImpl>(
          this, _$identity);
}

abstract class _RepoDetailState implements RepoDetailState {
  const factory _RepoDetailState(
      {final String repoName,
      final RepoEntity? entity,
      final bool loading}) = _$RepoDetailStateImpl;

  @override
  String get repoName;
  @override
  RepoEntity? get entity;
  @override
  bool get loading;

  /// Create a copy of RepoDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoDetailStateImplCopyWith<_$RepoDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
