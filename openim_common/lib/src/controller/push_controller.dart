import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';
import 'package:get/get.dart';
import 'package:getuiflut/getuiflut.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:openim_common/openim_common.dart';

import 'firebase_options.dart';

enum PushType { getui, FCM }

const appID = 'your-app-id';
const appKey = 'your-app-key';
const appSecret = 'your-app-secret';

class PushController extends GetxService {
  PushType pushType = PushType.getui;

  @override
  void onInit() {
    super.onInit();

    if (PushController().pushType == PushType.getui) {
      GetuiPushController()._addEventHandler();
      GetuiPushController()._initialize();
    }
  }

  /// Logs in the user with the specified alias to the push notification service.
  ///
  /// Depending on the push type configured, it either logs in using the Getui or
  /// FCM push service.
  ///
  /// If using Getui, it binds the alias to the Getui service.
  ///
  /// If using FCM, it listens for token refresh events and logs in, invoking the
  /// provided callback with the new token.
  ///
  /// Throws an assertion error if the FCM push type is selected but the
  /// `onTokenRefresh` callback is not provided.
  ///
  /// - Parameters:
  ///   - alias: The alias to bind to the push notification service for getui.
  ///   - onTokenRefresh: A callback function that is invoked with the refreshed
  ///     token when using FCM. Required if the push type is FCM.
  static void login(String alias, {void Function(String token)? onTokenRefresh}) {
    assert((PushController().pushType == PushType.FCM && onTokenRefresh != null) ||
        (PushController().pushType == PushType.getui && alias.isNotEmpty));

    if (PushController().pushType == PushType.getui) {
      GetuiPushController()._login(alias);
    } else {
      FCMPushController()._initialize().then((_) {
        FCMPushController()._getToken().then((token) => onTokenRefresh!(token));
        FCMPushController()._listenToTokenRefresh((token) => onTokenRefresh);
      });
    }
  }

  static void logout() {
    if (PushController().pushType == PushType.getui) {
      GetuiPushController()._logout();
    } else {
      FCMPushController()._deleteToken();
    }
  }

  static void setBadge(int badge) {
    if (PushController().pushType == PushType.getui) {
      GetuiPushController()._setBadge(badge);
    }
  }

  static void resetBadge() {
    if (PushController().pushType == PushType.getui) {
      GetuiPushController()._resetBadge();
    }
  }
}

class GetuiPushController {
  static final GetuiPushController _instance = GetuiPushController._();
  factory GetuiPushController() => _instance;

  GetuiPushController._();

  Future<void> _initialize() async {
    Permissions.notification().then((isGranted) {
      if (isGranted) {
        try {
          Getuiflut.initGetuiSdk;
        } catch (e) {
          e.toString();
        }
      }
    });
  }

  void _addEventHandler() {
    if (Platform.isIOS) {
      Getuiflut().startSdk(
        appId: appID,
        appKey: appKey,
        appSecret: appSecret,
      );

      Getuiflut().runBackgroundEnable(0);
    }

    Getuiflut().addEventHandler(
      onReceiveClientId: (String message) async {
        print("flutter onReceiveClientId: $message");
      },
      onRegisterDeviceToken: (String message) async {
        print("flutter onRegisterDeviceToken: $message");
      },
      onReceivePayload: (Map<String, dynamic> message) async {},
      onReceiveNotificationResponse: (Map<String, dynamic> message) async {},
      onAppLinkPayload: (String message) async {},
      onReceiveOnlineState: (bool online) async {},
      onPushModeResult: (Map<String, dynamic> message) async {},
      onSetTagResult: (Map<String, dynamic> message) async {},
      onAliasResult: (Map<String, dynamic> message) async {},
      onQueryTagResult: (Map<String, dynamic> message) async {},
      onWillPresentNotification: (Map<String, dynamic> message) async {},
      onOpenSettingsForNotification: (Map<String, dynamic> message) async {},
      onGrantAuthorization: (String granted) async {},
      onReceiveMessageData: (Map<String, dynamic> event) async {
        print("flutter onReceiveMessageData: $event");
      },
      onNotificationMessageArrived: (Map<String, dynamic> event) async {},
      onNotificationMessageClicked: (Map<String, dynamic> event) async {},
      onTransmitUserMessageReceive: (Map<String, dynamic> event) async {},
      onLiveActivityResult: (Map<String, dynamic> event) async {},
      onRegisterPushToStartTokenResult: (Map<String, dynamic> event) async {},
    );
  }

  Future<void> _login(String uid) async {
    print('login user ID: $uid, client id: ${await Getuiflut.getClientId}');
    Getuiflut().bindAlias(uid, 'openim');
  }

  void _logout() {
    Getuiflut().unbindAlias(OpenIM.iMManager.userID, 'openim', true);
  }

  void _setBadge(int badge) {
    Getuiflut().setBadge(badge);
  }

  void _resetBadge() {
    Getuiflut().resetBadge();
  }
}

class FCMPushController {
  static final FCMPushController _instance = FCMPushController._internal();
  factory FCMPushController() => _instance;

  FCMPushController._internal();

  Future<void> _initialize() async {
    GooglePlayServicesAvailability? availability = GooglePlayServicesAvailability.success;
    if (Platform.isAndroid) {
      availability = await GoogleApiAvailability.instance.checkGooglePlayServicesAvailability();
    }
    if (availability != GooglePlayServicesAvailability.serviceInvalid) {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    } else {
      Logger.print('Google Play Services are not available');
      return;
    }

    await _requestPermission();

    _configureForegroundNotification();

    _configureBackgroundNotification();

    return;
  }

  Future<void> _requestPermission() async {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
    print('User granted permission: ${settings.authorizationStatus}');
  }

  void _configureForegroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('Foreground notification received: ${message.notification?.title}');

      if (message.notification != null) {}
    });
  }

  void _configureBackgroundNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('App opened from background: ${message.notification?.title}');
    });

    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        print('App opened from terminated state: ${message.notification?.title}');
      }
    });
  }

  Future<String> _getToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    Logger.print("FCM Token: $token");

    if (token == null) {
      throw Exception('FCM Token is null');
    }

    return token;
  }

  Future<void> _deleteToken() {
    return FirebaseMessaging.instance.deleteToken();
  }

  void _listenToTokenRefresh(void Function(String token) onTokenRefresh) {
    FirebaseMessaging.instance.onTokenRefresh.listen((String newToken) {
      print("FCM Token refreshed: $newToken");
      onTokenRefresh(newToken);
    });
  }
}
