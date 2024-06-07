import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'state/nit_notifications_state.dart';

class NitNotificationListenerWidget<NotificationClass>
    extends HookConsumerWidget {
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
    // ignore: deprecated_member_use
    final isMounted = useIsMounted();
    final context = useContext();

    if (state.message != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          if (isMounted()) {
            notificationPresenter(context, state.message! as NotificationClass);
            ref
                .read(nitNotificationsStateProvider(NotificationClass).notifier)
                .resetNotifications(context);
          }
        },
      );
    }

    return child;
  }
}
