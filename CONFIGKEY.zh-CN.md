
# 常见功能配置指南

## 地图功能

### 配置指南

需要配置对应的 AMap Key。具体请参考 [AMap 文档](https://lbs.amap.com/)，工程中的代码需要修改以下 Key：

- **[webKey](https://github.com/openimsdk/openim-flutter-demo/blob/5720a10a31a0a9bc5319775f9f4da83d6996dbfe/openim_common/lib/src/config.dart#L49)**
- **[webServerKey](https://github.com/openimsdk/openim-flutter-demo/blob/5720a10a31a0a9bc5319775f9f4da83d6996dbfe/openim_common/lib/src/config.dart#L50)**

完成配置后即可启用地图功能。

---

## 离线推送功能

目前使用的是集成方案。

### 客户端配置

#### 1. 中国大陆地区使用个推（[Getui](https://getui.com/)）

###### 在[Getui](https://getui.com/)的集成指南，配置iOS和Android。

**iOS 平台配置：**
根据[其文档](https://docs.getui.com/getui/mobile/ios/overview/)做好相应的iOS配置。然后在代码中找到以下文件并修改对应的 iOS侧Key：

- **[push_controller.dart](openim_common/lib/src/controller/push_controller.dart)**

```dart
const appID = 'your-app-id';
const appKey = 'your-app-key';
const appSecret = 'your-app-secret';
```

**Android 平台配置：**
根据[其文档](https://docs.getui.com/getui/mobile/android/overview/)做好相应的Android配置，注意[多厂商](https://docs.getui.com/getui/mobile/vendor/vendor_open/)配置。然后修改以下文件内容：

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

#### 2. 海外地区使用 [FCM（Firebase Cloud Messaging）](https://firebase.google.com/docs/cloud-messaging)

根据 [FCM](https://firebase.google.com/docs/cloud-messaging) 的集成指南，替换以下文件：

- **[google-services.json](android/app/google-services.json)**（Android 平台）
- **[GoogleService-Info.plist](ios/Runner/GoogleService-Info.plist)**（iOS 平台）
- **[firebase_options.dart](openim_common/lib/src/controller/firebase_options.dart)**（Dart 项目中的 Firebase 配置）

---

### 服务端配置

在服务端修改推送相关配置文件：

- **[openim-push.yml](https://github.com/openimsdk/open-im-server/blob/main/config/openim-push.yml)**

```yml
#Use geTui for offline push notifications, or choose fcm or jpns; corresponding configuration settings must be specified.
enable:
getui:
  pushUrl: https://restapi.getui.com/v2/$appId
  masterSecret:
  appKey:
  intent:
  channelID:
  channelName:
fcm:
  # Prioritize using file paths. If the file path is empty, use URL
  filePath:   # File path is concatenated with the parameters passed in through - c(`mage` default pass in `config/`) and filePath.
  authURL:   #  Must start with https or http.
```

根据实际需求，完成对应的客户端和服务端配置后即可启用离线推送功能。
