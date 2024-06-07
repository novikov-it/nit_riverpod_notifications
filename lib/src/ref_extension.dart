import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/nit_notifications_state.dart';

extension NitNotificationsRefExtension on Ref {
  notifyUser<NotificationClass>(NotificationClass notification) {
    read(nitNotificationsStateProvider(NotificationClass).notifier)
        .notifyUser(notification);
  }
}

extension NitNotificationsWidgetRefExtension on WidgetRef {
  notifyUser<NotificationClass>(NotificationClass notification) {
    read(nitNotificationsStateProvider(NotificationClass).notifier)
        .notifyUser(notification);
  }
}
