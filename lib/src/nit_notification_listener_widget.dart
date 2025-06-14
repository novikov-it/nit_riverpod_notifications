import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state/nit_notifications_state.dart';

class NitNotificationListenerWidget<NotificationClass> extends ConsumerWidget {
  const NitNotificationListenerWidget({
    super.key,
    required this.child,
    required this.notificationPresenter,
  });

  final Widget child;
  final void Function(BuildContext context, NotificationClass notification)
      notificationPresenter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nitNotificationsStateProvider(NotificationClass));

    if (state.message != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          if (context.mounted) {
            notificationPresenter(context, state.message! as NotificationClass);
            ref
                .read(nitNotificationsStateProvider(NotificationClass).notifier)
                .resetNotifications();
          }
        },
      );
    }

    return child;
  }
}
