import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nit_riverpod_notifications/nit_riverpod_notifications.dart';

void main() {
  testWidgets('listener widget invokes presenter and resets state', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    String? received;

    await tester.pumpWidget(ProviderScope(
      parent: container,
      child: NitNotificationListenerWidget<String>(
        notificationPresenter: (context, notification) {
          received = notification;
        },
        child: const SizedBox.shrink(),
      ),
    ));

    container.read(nitNotificationsStateProvider(String).notifier).notifyUser('hello');

    await tester.pump();
    await tester.pump();

    expect(received, 'hello');
    expect(container.read(nitNotificationsStateProvider(String)).message, isNull);
  });
}
