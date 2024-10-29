// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepoListState {
  List<RepoItemEntity> get items => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RepoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepoListStateCopyWith<RepoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListStateCopyWith<$Res> {
  factory $RepoListStateCopyWith(
          RepoListState value, $Res Function(RepoListState) then) =
      _$RepoListStateCopyWithImpl<$Res, RepoListState>;
  @useResult
  $Res call({List<RepoItemEntity> items, bool loading, String? errorMessage});
}

/// @nodoc
class _$RepoListStateCopyWithImpl<$Res, $Val extends RepoListState>
    implements $RepoListStateCopyWith<$Res> {
  _$RepoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? loading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoItemEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoListStateImplCopyWith<$Res>
    implements $RepoListStateCopyWith<$Res> {
  factory _$$RepoListStateImplCopyWith(
          _$RepoListStateImpl value, $Res Function(_$RepoListStateImpl) then) =
      __$$RepoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RepoItemEntity> items, bool loading, String? errorMessage});
}

/// @nodoc
class __$$RepoListStateImplCopyWithImpl<$Res>
    extends _$RepoListStateCopyWithImpl<$Res, _$RepoListStateImpl>
    implements _$$RepoListStateImplCopyWith<$Res> {
  __$$RepoListStateImplCopyWithImpl(
      _$RepoListStateImpl _value, $Res Function(_$RepoListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? loading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RepoListStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepoItemEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RepoListStateImpl implements _RepoListState {
  const _$RepoListStateImpl(
      {final List<RepoItemEntity> items = const [],
      this.loading = true,
      this.errorMessage = null})
      : _items = items;

  final List<RepoItemEntity> _items;
  @override
  @JsonKey()
  List<RepoItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'RepoListState(items: $items, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoListStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), loading, errorMessage);

  /// Create a copy of RepoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoListStateImplCopyWith<_$RepoListStateImpl> get copyWith =>
      __$$RepoListStateImplCopyWithImpl<_$RepoListStateImpl>(this, _$identity);
}

abstract class _RepoListState implements RepoListState {
  const factory _RepoListState(
      {final List<RepoItemEntity> items,
      final bool loading,
      final String? errorMessage}) = _$RepoListStateImpl;

  @override
  List<RepoItemEntity> get items;
  @override
  bool get loading;
  @override
  String? get errorMessage;

  /// Create a copy of RepoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepoListStateImplCopyWith<_$RepoListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnClickRepoItemResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String repoName) openRepoDetailPage,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String repoName)? openRepoDetailPage,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String repoName)? openRepoDetailPage,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenRepoDetailPage value) openRepoDetailPage,
    required TResult Function(None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult? Function(None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnClickRepoItemResultCopyWith<$Res> {
  factory $OnClickRepoItemResultCopyWith(OnClickRepoItemResult value,
          $Res Function(OnClickRepoItemResult) then) =
      _$OnClickRepoItemResultCopyWithImpl<$Res, OnClickRepoItemResult>;
}

/// @nodoc
class _$OnClickRepoItemResultCopyWithImpl<$Res,
        $Val extends OnClickRepoItemResult>
    implements $OnClickRepoItemResultCopyWith<$Res> {
  _$OnClickRepoItemResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnClickRepoItemResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenRepoDetailPageImplCopyWith<$Res> {
  factory _$$OpenRepoDetailPageImplCopyWith(_$OpenRepoDetailPageImpl value,
          $Res Function(_$OpenRepoDetailPageImpl) then) =
      __$$OpenRepoDetailPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String repoName});
}

/// @nodoc
class __$$OpenRepoDetailPageImplCopyWithImpl<$Res>
    extends _$OnClickRepoItemResultCopyWithImpl<$Res, _$OpenRepoDetailPageImpl>
    implements _$$OpenRepoDetailPageImplCopyWith<$Res> {
  __$$OpenRepoDetailPageImplCopyWithImpl(_$OpenRepoDetailPageImpl _value,
      $Res Function(_$OpenRepoDetailPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnClickRepoItemResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoName = null,
  }) {
    return _then(_$OpenRepoDetailPageImpl(
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenRepoDetailPageImpl implements OpenRepoDetailPage {
  const _$OpenRepoDetailPageImpl({required this.repoName});

  @override
  final String repoName;

  @override
  String toString() {
    return 'OnClickRepoItemResult.openRepoDetailPage(repoName: $repoName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenRepoDetailPageImpl &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName);

  /// Create a copy of OnClickRepoItemResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenRepoDetailPageImplCopyWith<_$OpenRepoDetailPageImpl> get copyWith =>
      __$$OpenRepoDetailPageImplCopyWithImpl<_$OpenRepoDetailPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String repoName) openRepoDetailPage,
    required TResult Function() none,
  }) {
    return openRepoDetailPage(repoName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String repoName)? openRepoDetailPage,
    TResult? Function()? none,
  }) {
    return openRepoDetailPage?.call(repoName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String repoName)? openRepoDetailPage,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (openRepoDetailPage != null) {
      return openRepoDetailPage(repoName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenRepoDetailPage value) openRepoDetailPage,
    required TResult Function(None value) none,
  }) {
    return openRepoDetailPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult? Function(None value)? none,
  }) {
    return openRepoDetailPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) {
    if (openRepoDetailPage != null) {
      return openRepoDetailPage(this);
    }
    return orElse();
  }
}

abstract class OpenRepoDetailPage implements OnClickRepoItemResult {
  const factory OpenRepoDetailPage({required final String repoName}) =
      _$OpenRepoDetailPageImpl;

  String get repoName;

  /// Create a copy of OnClickRepoItemResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenRepoDetailPageImplCopyWith<_$OpenRepoDetailPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$OnClickRepoItemResultCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnClickRepoItemResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'OnClickRepoItemResult.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String repoName) openRepoDetailPage,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String repoName)? openRepoDetailPage,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String repoName)? openRepoDetailPage,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenRepoDetailPage value) openRepoDetailPage,
    required TResult Function(None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult? Function(None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenRepoDetailPage value)? openRepoDetailPage,
    TResult Function(None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements OnClickRepoItemResult {
  const factory None() = _$NoneImpl;
}
