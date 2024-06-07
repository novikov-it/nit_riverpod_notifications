// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'nit_notifications/nit_notifications_default_flash_widget.dart';

// import 'nit_notifications/nit_notification.dart';
// import 'state/nit_notifications_state.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';

// extension NotificationsExtension on WidgetRef {
//   // void useCustomNitNotifier<NotificationClass>(
//   //   void Function(BuildContext context, NotificationClass notification)
//   //       notificationPresenter,
//   // ) {
//   //   final state = watch(nitNotificationsStateProvider(NotificationClass));
//   //   // ignore: deprecated_member_use
//   //   final isMounted = useIsMounted();
//   //   final context = useContext();

//   //   if (state.message != null) {
//   //     WidgetsBinding.instance.addPostFrameCallback(
//   //       (timeStamp) {
//   //         if (isMounted()) {
//   //           notificationPresenter(context, state.message! as NotificationClass);
//   //           read(nitNotificationsStateProvider(NotificationClass).notifier)
//   //               .resetNotifications(context);
//   //         }
//   //       },
//   //     );
//   //   }
//   // }

//   // void useDefaultNitNotifier() => useCustomNitNotifier<NitNotification>(
//   //       (context, notification) => context.showNotificationFlash(notification),
//   //     );

//   notifyUser<NotificationClass>(NotificationClass notification) {
//     read(nitNotificationsStateProvider(NotificationClass).notifier)
//         .notifyUser(notification);
//   }
// }
