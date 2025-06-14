import 'package:flutter_test/flutter_test.dart';
import 'package:nit_riverpod_notifications/nit_riverpod_notifications.dart';

void main() {
  test('notification constructors set correct type', () {
    expect(NitNotification.success('ok').type, NitNotificationTypesEnum.success);
    expect(NitNotification.warning('w').type, NitNotificationTypesEnum.warning);
    expect(NitNotification.error('e').type, NitNotificationTypesEnum.error);
  });
}
