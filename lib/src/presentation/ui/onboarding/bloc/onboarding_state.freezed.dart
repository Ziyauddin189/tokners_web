// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnBoardingState {
  int get index => throw _privateConstructorUsedError;
  List<String> get onBoards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({int index, List<String> onBoards});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? onBoards = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onBoards: null == onBoards
          ? _value.onBoards
          : onBoards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnBoardingStateStateCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$_OnBoardingStateStateCopyWith(_$_OnBoardingStateState value,
          $Res Function(_$_OnBoardingStateState) then) =
      __$$_OnBoardingStateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<String> onBoards});
}

/// @nodoc
class __$$_OnBoardingStateStateCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$_OnBoardingStateState>
    implements _$$_OnBoardingStateStateCopyWith<$Res> {
  __$$_OnBoardingStateStateCopyWithImpl(_$_OnBoardingStateState _value,
      $Res Function(_$_OnBoardingStateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? onBoards = null,
  }) {
    return _then(_$_OnBoardingStateState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      onBoards: null == onBoards
          ? _value._onBoards
          : onBoards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_OnBoardingStateState implements _OnBoardingStateState {
  const _$_OnBoardingStateState(
      {this.index = 0, final List<String> onBoards = const <String>[]})
      : _onBoards = onBoards;

  @override
  @JsonKey()
  final int index;
  final List<String> _onBoards;
  @override
  @JsonKey()
  List<String> get onBoards {
    if (_onBoards is EqualUnmodifiableListView) return _onBoards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onBoards);
  }

  @override
  String toString() {
    return 'OnBoardingState(index: $index, onBoards: $onBoards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnBoardingStateState &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._onBoards, _onBoards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_onBoards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnBoardingStateStateCopyWith<_$_OnBoardingStateState> get copyWith =>
      __$$_OnBoardingStateStateCopyWithImpl<_$_OnBoardingStateState>(
          this, _$identity);
}

abstract class _OnBoardingStateState implements OnBoardingState {
  const factory _OnBoardingStateState(
      {final int index, final List<String> onBoards}) = _$_OnBoardingStateState;

  @override
  int get index;
  @override
  List<String> get onBoards;
  @override
  @JsonKey(ignore: true)
  _$$_OnBoardingStateStateCopyWith<_$_OnBoardingStateState> get copyWith =>
      throw _privateConstructorUsedError;
}
