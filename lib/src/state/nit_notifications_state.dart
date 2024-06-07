import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nit_notifications_state.g.dart';
part 'nit_notifications_state.freezed.dart';

@Riverpod(keepAlive: true)
class NitNotificationsState extends _$NitNotificationsState {
  // void Function(BuildContext context, String error)? _errorPresenter;

  @override
  NitNotificationsStateModel build(Type t) {
    return const NitNotificationsStateModel(
      message: null,
    );
  }

  // setupErrorPresenter(
  //     void Function(BuildContext context, String error)? function) {
  //   _errorPresenter = function;
  // }

  notifyUser<MessageClass>(MessageClass message) {
    state = state.copyWith(message: message);
  }

  resetNotifications(BuildContext context) {
    // if (state.error != null && _errorPresenter != null) {
    // _errorPresenter!(context, state.error!);
    state = state.copyWith(message: null);
    // }
  }
}

@freezed
class NitNotificationsStateModel with _$NitNotificationsStateModel {
  const factory NitNotificationsStateModel({
    Object? message,
  }) = _NitNotificationsStateModel;
}
