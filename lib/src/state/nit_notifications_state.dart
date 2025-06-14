import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nit_notifications_state.g.dart';
part 'nit_notifications_state.freezed.dart';

@Riverpod(keepAlive: true)
class NitNotificationsState extends _$NitNotificationsState {
  @override
  NitNotificationsStateModel build(Type t) {
    return const NitNotificationsStateModel(
      message: null,
    );
  }

  void notifyUser<MessageClass>(MessageClass message) {
    state = state.copyWith(message: message);
  }

  void resetNotifications() {
    state = state.copyWith(message: null);
  }
}

@freezed
class NitNotificationsStateModel with _$NitNotificationsStateModel {
  const factory NitNotificationsStateModel({
    Object? message,
  }) = _NitNotificationsStateModel;
}
