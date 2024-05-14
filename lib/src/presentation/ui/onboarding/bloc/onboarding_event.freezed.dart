// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateIndex {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateIndexCopyWith<UpdateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIndexCopyWith<$Res> {
  factory $UpdateIndexCopyWith(
          UpdateIndex value, $Res Function(UpdateIndex) then) =
      _$UpdateIndexCopyWithImpl<$Res, UpdateIndex>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$UpdateIndexCopyWithImpl<$Res, $Val extends UpdateIndex>
    implements $UpdateIndexCopyWith<$Res> {
  _$UpdateIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateIndexCopyWith<$Res>
    implements $UpdateIndexCopyWith<$Res> {
  factory _$$_UpdateIndexCopyWith(
          _$_UpdateIndex value, $Res Function(_$_UpdateIndex) then) =
      __$$_UpdateIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_UpdateIndexCopyWithImpl<$Res>
    extends _$UpdateIndexCopyWithImpl<$Res, _$_UpdateIndex>
    implements _$$_UpdateIndexCopyWith<$Res> {
  __$$_UpdateIndexCopyWithImpl(
      _$_UpdateIndex _value, $Res Function(_$_UpdateIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_UpdateIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateIndex implements _UpdateIndex {
  const _$_UpdateIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'UpdateIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateIndexCopyWith<_$_UpdateIndex> get copyWith =>
      __$$_UpdateIndexCopyWithImpl<_$_UpdateIndex>(this, _$identity);
}

abstract class _UpdateIndex implements UpdateIndex {
  const factory _UpdateIndex({required final int index}) = _$_UpdateIndex;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateIndexCopyWith<_$_UpdateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateBoards {
  List<String> get boards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateBoardsCopyWith<UpdateBoards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBoardsCopyWith<$Res> {
  factory $UpdateBoardsCopyWith(
          UpdateBoards value, $Res Function(UpdateBoards) then) =
      _$UpdateBoardsCopyWithImpl<$Res, UpdateBoards>;
  @useResult
  $Res call({List<String> boards});
}

/// @nodoc
class _$UpdateBoardsCopyWithImpl<$Res, $Val extends UpdateBoards>
    implements $UpdateBoardsCopyWith<$Res> {
  _$UpdateBoardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boards = null,
  }) {
    return _then(_value.copyWith(
      boards: null == boards
          ? _value.boards
          : boards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateBoardsCopyWith<$Res>
    implements $UpdateBoardsCopyWith<$Res> {
  factory _$$_UpdateBoardsCopyWith(
          _$_UpdateBoards value, $Res Function(_$_UpdateBoards) then) =
      __$$_UpdateBoardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> boards});
}

/// @nodoc
class __$$_UpdateBoardsCopyWithImpl<$Res>
    extends _$UpdateBoardsCopyWithImpl<$Res, _$_UpdateBoards>
    implements _$$_UpdateBoardsCopyWith<$Res> {
  __$$_UpdateBoardsCopyWithImpl(
      _$_UpdateBoards _value, $Res Function(_$_UpdateBoards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boards = null,
  }) {
    return _then(_$_UpdateBoards(
      boards: null == boards
          ? _value._boards
          : boards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_UpdateBoards implements _UpdateBoards {
  const _$_UpdateBoards({required final List<String> boards})
      : _boards = boards;

  final List<String> _boards;
  @override
  List<String> get boards {
    if (_boards is EqualUnmodifiableListView) return _boards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boards);
  }

  @override
  String toString() {
    return 'UpdateBoards(boards: $boards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBoards &&
            const DeepCollectionEquality().equals(other._boards, _boards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_boards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBoardsCopyWith<_$_UpdateBoards> get copyWith =>
      __$$_UpdateBoardsCopyWithImpl<_$_UpdateBoards>(this, _$identity);
}

abstract class _UpdateBoards implements UpdateBoards {
  const factory _UpdateBoards({required final List<String> boards}) =
      _$_UpdateBoards;

  @override
  List<String> get boards;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateBoardsCopyWith<_$_UpdateBoards> get copyWith =>
      throw _privateConstructorUsedError;
}
