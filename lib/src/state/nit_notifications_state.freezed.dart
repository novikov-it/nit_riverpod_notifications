// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nit_notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NitNotificationsStateModel {
  Object? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NitNotificationsStateModelCopyWith<NitNotificationsStateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NitNotificationsStateModelCopyWith<$Res> {
  factory $NitNotificationsStateModelCopyWith(NitNotificationsStateModel value,
          $Res Function(NitNotificationsStateModel) then) =
      _$NitNotificationsStateModelCopyWithImpl<$Res,
          NitNotificationsStateModel>;
  @useResult
  $Res call({Object? message});
}

/// @nodoc
class _$NitNotificationsStateModelCopyWithImpl<$Res,
        $Val extends NitNotificationsStateModel>
    implements $NitNotificationsStateModelCopyWith<$Res> {
  _$NitNotificationsStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message ? _value.message : message,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NitNotificationsStateModelImplCopyWith<$Res>
    implements $NitNotificationsStateModelCopyWith<$Res> {
  factory _$$NitNotificationsStateModelImplCopyWith(
          _$NitNotificationsStateModelImpl value,
          $Res Function(_$NitNotificationsStateModelImpl) then) =
      __$$NitNotificationsStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? message});
}

/// @nodoc
class __$$NitNotificationsStateModelImplCopyWithImpl<$Res>
    extends _$NitNotificationsStateModelCopyWithImpl<$Res,
        _$NitNotificationsStateModelImpl>
    implements _$$NitNotificationsStateModelImplCopyWith<$Res> {
  __$$NitNotificationsStateModelImplCopyWithImpl(
      _$NitNotificationsStateModelImpl _value,
      $Res Function(_$NitNotificationsStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NitNotificationsStateModelImpl(
      message: freezed == message ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$NitNotificationsStateModelImpl implements _NitNotificationsStateModel {
  const _$NitNotificationsStateModelImpl({this.message});

  @override
  final Object? message;

  @override
  String toString() {
    return 'NitNotificationsStateModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NitNotificationsStateModelImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NitNotificationsStateModelImplCopyWith<_$NitNotificationsStateModelImpl>
      get copyWith => __$$NitNotificationsStateModelImplCopyWithImpl<
          _$NitNotificationsStateModelImpl>(this, _$identity);
}

abstract class _NitNotificationsStateModel
    implements NitNotificationsStateModel {
  const factory _NitNotificationsStateModel({final Object? message}) =
      _$NitNotificationsStateModelImpl;

  @override
  Object? get message;
  @override
  @JsonKey(ignore: true)
  _$$NitNotificationsStateModelImplCopyWith<_$NitNotificationsStateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
