import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nit_riverpod_notifications/nit_riverpod_notifications.dart';

void main() {
  testWidgets('notifier stores and resets messages', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await tester.pumpWidget(ProviderScope(parent: container, child: const SizedBox.shrink()));

    final notifier = container.read(nitNotificationsStateProvider(String).notifier);

    notifier.notifyUser('hello');
    await tester.pump();

    expect(container.read(nitNotificationsStateProvider(String)).message, 'hello');

    final context = tester.element(find.byType(SizedBox));
    notifier.resetNotifications(context);
    await tester.pump();

    expect(container.read(nitNotificationsStateProvider(String)).message, isNull);
  });
}
