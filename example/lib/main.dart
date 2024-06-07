import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nit_riverpod_notifications/nit_riverpod_notifications.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NiT Riverpod Notifications Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NiT Riverpod Notifications Demo'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NitNotificationListenerWidget(
      notificationPresenter: NitNotification.showNotificationFlash,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Press button to see message:',
              ),
              TextButton(
                onPressed: () => ref.notifyUser(
                  NitNotification.error(
                    'This is error',
                  ),
                ),
                child: const Text('Show error'),
              ),
              TextButton(
                onPressed: () => ref.notifyUser(
                  NitNotification.warning(
                    'This is warning',
                  ),
                ),
                child: const Text('Show warning'),
              ),
              TextButton(
                onPressed: () => ref.notifyUser(
                  NitNotification.success(
                    'This is success',
                  ),
                ),
                child: const Text('Show success'),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => ref.notifyUser(
        //     NitNotification.error(
        //       'Укажите название учреждения',
        //     ),
        //   ),
        //   tooltip: 'Error',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
