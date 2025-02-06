
# Common Function Configuration Guide

- [Offline push](#offlinepush)
- [Map](#map)

## Offlinepush

Currently using the integrated solution.

### Client configuration

#### 1. Use Getui (https://getui.com/) in mainland China

###### Configure iOS and Android in the integration guide of Getui

**iOS platform configuration:**
According to [its documentation](https://docs.getui.com/getui/mobile/ios/overview/), make the corresponding iOS configuration. Then find the following files in the code and modify the corresponding iOS side key:

- **[push_controller.dart](openim_common/lib/src/controller/push_controller.dart)**

```dart
  const appID = 'your-app-id';
  const appKey = 'your-app-key';
  const appSecret = 'your-app-secret';
```

**Android platform configuration:**
According to [its documentation](https://docs.getui.com/getui/mobile/android/overview/), make corresponding Android configurations, and pay attention to [multi-vendor](https://docs.getui.com/getui/mobile/vendor/vendor_open/) configurations. Then modify the following file contents:

- **[build.gradle](android/app/build.gradle)**

```gradle
  manifestPlaceholders = [
      GETUI_APPID    : "",
      XIAOMI_APP_ID  : "",
      XIAOMI_APP_KEY : "",
      MEIZU_APP_ID   : "",
      MEIZU_APP_KEY  : "",
      HUAWEI_APP_ID  : "",
      OPPO_APP_KEY   : "",
      OPPO_APP_SECRET: "",
      VIVO_APP_ID    : "",
      VIVO_APP_KEY   : "",
      HONOR_APP_ID   : "",
  ]
```

#### 2. Use [FCM (Firebase Cloud Messaging)](https://firebase.google.com/docs/cloud-messaging) in overseas regions

According to the integration guide of [FCM](https://firebase.google.com/docs/cloud-messaging), replace the following files:

- **[google-services.json](android/app/google-services.json)** (Android platform)
- **[GoogleService-Info.plist](ios/Runner/GoogleService-Info.plist)** (iOS platform)
- **[firebase_options.dart](openim_common/lib/src/controller/firebase_options.dart)** (Firebase configuration in Dart project)

### Offline push banner settings

Currently, the SDK is designed to directly control the display content of the push banner by the client. When sending a message, set the input parameter [offlinePushInfo](https://github.com/openimsdk/openim-flutter-demo/blob/cc72b6d7ca5f70ca07885857beecec512f904f8c/lib/pages/chat/chat_logic.dart#L543):

```dart
  final offlinePushInfo = OfflinePushInfo(
  title: "Fill in the title",
  desc: "Fill in the description, such as the message content",
  iOSBadgeCount: true,
  );
  // If you do not customize offlinePushInfo, the title defaults to the app name, and the desc defaults to "You received a new message"
```

According to actual needs, you can enable the offline push function after completing the corresponding client and server configurations.

---

## Map

### Configuration Guide

Need to configure the corresponding AMap Key. Please refer to [AMap Document](https://lbs.amap.com/) for details. The code in the project needs to modify the following Key:

- **[webKey](https://github.com/openimsdk/openim-flutter-demo/blob/5720a10a31a0a9bc5319775f9f4da83d6996dbfe/openim_common/lib/src/config.dart#L49)**
- **[webServerKey](https://github.com/openimsdk/openim-flutter-demo/blob/5720a10a31a0a9bc5319775f9f4da83d6996dbfe/openim_common/lib/src/config.dart#L50)**

```dart
  static const webKey = 'webKey';
  static const webServerKey = 'webServerKey';
```

Once the configuration is complete, you can enable the map function.