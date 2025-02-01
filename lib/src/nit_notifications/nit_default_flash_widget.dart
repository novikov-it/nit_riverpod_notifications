import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
import 'nit_notification.dart';
import 'nit_notification_types_enum.dart';

class NitDefaultFlashWidget extends StatelessWidget {
  const NitDefaultFlashWidget({
    super.key,
    required this.notification,
    required this.controller,
  });

  final NitNotification notification;
  final FlashController controller;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        extensions: const [FlashBarTheme()],
      ),
      child: FlashBar(
        margin: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        controller: controller,
        behavior: FlashBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        clipBehavior: Clip.antiAlias,
        icon: switch (notification.type) {
          NitNotificationTypesEnum.success => Icon(
              Icons.check,
              color: Theme.of(context).colorScheme.primary,
            ),
          NitNotificationTypesEnum.warning => Icon(
              Icons.warning_amber,
              color: Theme.of(context).colorScheme.secondary,
            ),
          NitNotificationTypesEnum.error => Icon(
              Icons.error_outline,
              color: Theme.of(context).colorScheme.error,
            ),
        },
        contentTextStyle: Theme.of(context).textTheme.bodyMedium,
        content: Text(
          notification.text,
        ),
      ),
    );
  }
}
