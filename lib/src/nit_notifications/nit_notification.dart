import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'nit_notification_types_enum.dart';
import 'nit_default_flash_widget.dart';

class NitNotification {
  const NitNotification(this.type, this.text, {this.onTap, this.position});

  final NitNotificationTypesEnum type;
  final String text;
  final VoidCallback? onTap;
  final FlashPosition? position;

  NitNotification.error(this.text, {this.onTap, this.position})
      : type = NitNotificationTypesEnum.error;
  NitNotification.warning(this.text, {this.onTap, this.position})
      : type = NitNotificationTypesEnum.warning;
  NitNotification.success(this.text, {this.onTap, this.position})
      : type = NitNotificationTypesEnum.success;

  static Future<bool?> showNotificationFlash(
    BuildContext context,
    NitNotification notification,
  ) {
    return context.showFlash<bool>(
      duration: const Duration(seconds: 3),
      builder: (context, controller) {
        return Consumer(
          builder: (context, ref, _) {
            return GestureDetector(
              onTap: () {
                controller.dismiss();
                notification.onTap?.call();
              },
              child: NitDefaultFlashWidget(
                notification: notification,
                controller: controller,
                position: notification.position,
              ),
            );
          },
        );
      },
    );
  }
}
