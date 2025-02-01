Riverpod-based tool to show UI messages from anywhere with just one line of code - ref.notifyUser(...).

## Features
1. Show notifications to users from any part of your application
2. Allows different handlers for different types of notifications to live together
3. Fully customizable - you can apply any UI and additional logic

## Getting started
First, you need to wrap your widget tree in NitNotificationListenerWidget and provide the notificationPresenter
```dart
return NitNotificationListenerWidget<NitNotification>(
      notificationPresenter: NitNotification.showNotificationFlash,
      child: Scaffold(
```
> The code above uses default notificationPresenter, which accepts NitNotification objects. However, you can use any object as a notification - it's configured with type parameter of NitNotificationListenerWidget
{.is-info}
That's all, now you can show notifications from anywhere where ref is accessible.
```dart
TextButton(
   onPressed: () => ref.notifyUser(
     NitNotification.warning(
        'This is warning',
     ),
   ),
   child: const Text('Show warning'),
),
```
> Object passed to the ref.notifyUser should be of the same type the NitNotificationListenerWidget was set up before.

> However, you can have several listeners for different notification types in parallel.
