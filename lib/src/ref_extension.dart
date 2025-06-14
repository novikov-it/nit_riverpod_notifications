import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/nit_notifications_state.dart';

extension NitNotificationsRefExtension on Ref {
  void notifyUser<NotificationClass>(NotificationClass notification) {
    read(nitNotificationsStateProvider(NotificationClass).notifier)
        .notifyUser(notification);
  }
}

extension NitNotificationsWidgetRefExtension on WidgetRef {
  void notifyUser<NotificationClass>(NotificationClass notification) {
    read(nitNotificationsStateProvider(NotificationClass).notifier)
        .notifyUser(notification);
  }
}
