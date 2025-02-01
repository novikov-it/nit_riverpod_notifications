import 'package:flash/flash_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'nit_notification_types_enum.dart';
import 'nit_default_flash_widget.dart';

class NitNotification {
  const NitNotification(this.type, this.text);

  final NitNotificationTypesEnum type;
  final String text;

  NitNotification.error(this.text) : type = NitNotificationTypesEnum.error;
  NitNotification.warning(this.text) : type = NitNotificationTypesEnum.warning;
  NitNotification.success(this.text) : type = NitNotificationTypesEnum.success;

  static Future showNotificationFlash(
    BuildContext context,
    NitNotification notification,
  ) async {
    return context.showFlash<bool>(
      duration: const Duration(seconds: 3),
      builder: (context, controller) {
        return Consumer(
          builder: (context, ref, _) {
            return NitDefaultFlashWidget(
              notification: notification,
              controller: controller,
            );
          },
        );
      },
    );
  }
}
