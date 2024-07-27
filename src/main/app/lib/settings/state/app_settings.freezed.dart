// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsState {
  bool get materialYou => throw _privateConstructorUsedError;
  bool get blackBackground => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsStateCopyWith<AppSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsStateCopyWith(
          AppSettingsState value, $Res Function(AppSettingsState) then) =
      _$AppSettingsStateCopyWithImpl<$Res, AppSettingsState>;
  @useResult
  $Res call({bool materialYou, bool blackBackground});
}

/// @nodoc
class _$AppSettingsStateCopyWithImpl<$Res, $Val extends AppSettingsState>
    implements $AppSettingsStateCopyWith<$Res> {
  _$AppSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialYou = null,
    Object? blackBackground = null,
  }) {
    return _then(_value.copyWith(
      materialYou: null == materialYou
          ? _value.materialYou
          : materialYou // ignore: cast_nullable_to_non_nullable
              as bool,
      blackBackground: null == blackBackground
          ? _value.blackBackground
          : blackBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsStateImplCopyWith<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  factory _$$AppSettingsStateImplCopyWith(_$AppSettingsStateImpl value,
          $Res Function(_$AppSettingsStateImpl) then) =
      __$$AppSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool materialYou, bool blackBackground});
}

/// @nodoc
class __$$AppSettingsStateImplCopyWithImpl<$Res>
    extends _$AppSettingsStateCopyWithImpl<$Res, _$AppSettingsStateImpl>
    implements _$$AppSettingsStateImplCopyWith<$Res> {
  __$$AppSettingsStateImplCopyWithImpl(_$AppSettingsStateImpl _value,
      $Res Function(_$AppSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialYou = null,
    Object? blackBackground = null,
  }) {
    return _then(_$AppSettingsStateImpl(
      materialYou: null == materialYou
          ? _value.materialYou
          : materialYou // ignore: cast_nullable_to_non_nullable
              as bool,
      blackBackground: null == blackBackground
          ? _value.blackBackground
          : blackBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppSettingsStateImpl implements _AppSettingsState {
  const _$AppSettingsStateImpl(
      {this.materialYou = false, this.blackBackground = false});

  @override
  @JsonKey()
  final bool materialYou;
  @override
  @JsonKey()
  final bool blackBackground;

  @override
  String toString() {
    return 'AppSettingsState(materialYou: $materialYou, blackBackground: $blackBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsStateImpl &&
            (identical(other.materialYou, materialYou) ||
                other.materialYou == materialYou) &&
            (identical(other.blackBackground, blackBackground) ||
                other.blackBackground == blackBackground));
  }

  @override
  int get hashCode => Object.hash(runtimeType, materialYou, blackBackground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsStateImplCopyWith<_$AppSettingsStateImpl> get copyWith =>
      __$$AppSettingsStateImplCopyWithImpl<_$AppSettingsStateImpl>(
          this, _$identity);
}

abstract class _AppSettingsState implements AppSettingsState {
  const factory _AppSettingsState(
      {final bool materialYou,
      final bool blackBackground}) = _$AppSettingsStateImpl;

  @override
  bool get materialYou;
  @override
  bool get blackBackground;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsStateImplCopyWith<_$AppSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
