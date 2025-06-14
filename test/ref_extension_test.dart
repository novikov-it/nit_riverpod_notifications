import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nit_riverpod_notifications/nit_riverpod_notifications.dart';

class _NotifyWidget extends ConsumerWidget {
  const _NotifyWidget({required this.message});

  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.notifyUser<String>(message);
    return const SizedBox.shrink();
  }
}

void main() {
  testWidgets('ref extension notifies user', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await tester.pumpWidget(ProviderScope(
      parent: container,
      child: const _NotifyWidget(message: 'ping'),
    ));

    await tester.pump();

    expect(container.read(nitNotificationsStateProvider(String)).message, 'ping');
  });
}
