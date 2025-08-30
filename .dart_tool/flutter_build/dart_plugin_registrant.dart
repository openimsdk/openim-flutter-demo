//
// Generated file. Do not edit.
// This file is generated from template in file `flutter_tools/lib/src/flutter_plugins.dart`.
//

// @dart = 3.0

import 'dart:io'; // flutter_ignore: dart_io_import.
import 'package:camera_android/camera_android.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress_common/flutter_image_compress_common.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:google_api_availability_android/google_api_availability_android.dart';
import 'package:image_picker_android/image_picker_android.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:path_provider_android/path_provider_android.dart';
import 'package:shared_preferences_android/shared_preferences_android.dart';
import 'package:sqflite_android/sqflite_android.dart';
import 'package:url_launcher_android/url_launcher_android.dart';
import 'package:video_player_android/video_player_android.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:camera_avfoundation/camera_avfoundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress_common/flutter_image_compress_common.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:image_picker_ios/image_picker_ios.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:path_provider_foundation/path_provider_foundation.dart';
import 'package:shared_preferences_foundation/shared_preferences_foundation.dart';
import 'package:sqflite_darwin/sqflite_darwin.dart';
import 'package:uri_to_file/uri_to_file.dart';
import 'package:url_launcher_ios/url_launcher_ios.dart';
import 'package:video_player_avfoundation/video_player_avfoundation.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_selector_linux/file_selector_linux.dart';
import 'package:flutter_keyboard_visibility_linux/flutter_keyboard_visibility_linux.dart';
import 'package:flutter_local_notifications_linux/flutter_local_notifications_linux.dart';
import 'package:image_picker_linux/image_picker_linux.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider_linux/path_provider_linux.dart';
import 'package:record_linux/record_linux.dart';
import 'package:shared_preferences_linux/shared_preferences_linux.dart';
import 'package:url_launcher_linux/url_launcher_linux.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_selector_macos/file_selector_macos.dart';
import 'package:flutter_image_compress_macos/flutter_image_compress_macos.dart';
import 'package:flutter_keyboard_visibility_macos/flutter_keyboard_visibility_macos.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:image_picker_macos/image_picker_macos.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:path_provider_foundation/path_provider_foundation.dart';
import 'package:shared_preferences_foundation/shared_preferences_foundation.dart';
import 'package:sqflite_darwin/sqflite_darwin.dart';
import 'package:url_launcher_macos/url_launcher_macos.dart';
import 'package:video_player_avfoundation/video_player_avfoundation.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_selector_windows/file_selector_windows.dart';
import 'package:flutter_keyboard_visibility_windows/flutter_keyboard_visibility_windows.dart';
import 'package:image_picker_windows/image_picker_windows.dart';
import 'package:local_auth_windows/local_auth_windows.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider_windows/path_provider_windows.dart';
import 'package:shared_preferences_windows/shared_preferences_windows.dart';
import 'package:url_launcher_windows/url_launcher_windows.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

@pragma('vm:entry-point')
class _PluginRegistrant {

  @pragma('vm:entry-point')
  static void register() {
    if (Platform.isAndroid) {
      try {
        AndroidCamera.registerWith();
      } catch (err) {
        print(
          '`camera_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FilePickerIO.registerWith();
      } catch (err) {
        print(
          '`file_picker` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterImageCompressCommon.registerWith();
      } catch (err) {
        print(
          '`flutter_image_compress_common` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        AndroidFlutterLocalNotificationsPlugin.registerWith();
      } catch (err) {
        print(
          '`flutter_local_notifications` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        GeolocatorAndroid.registerWith();
      } catch (err) {
        print(
          '`geolocator_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        GoogleApiAvailabilityAndroid.registerWith();
      } catch (err) {
        print(
          '`google_api_availability_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        ImagePickerAndroid.registerWith();
      } catch (err) {
        print(
          '`image_picker_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        LocalAuthAndroid.registerWith();
      } catch (err) {
        print(
          '`local_auth_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PathProviderAndroid.registerWith();
      } catch (err) {
        print(
          '`path_provider_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SharedPreferencesAndroid.registerWith();
      } catch (err) {
        print(
          '`shared_preferences_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SqfliteAndroid.registerWith();
      } catch (err) {
        print(
          '`sqflite_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UrlLauncherAndroid.registerWith();
      } catch (err) {
        print(
          '`url_launcher_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        AndroidVideoPlayer.registerWith();
      } catch (err) {
        print(
          '`video_player_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        AndroidWebViewPlatform.registerWith();
      } catch (err) {
        print(
          '`webview_flutter_android` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

    } else if (Platform.isIOS) {
      try {
        AVFoundationCamera.registerWith();
      } catch (err) {
        print(
          '`camera_avfoundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FilePickerIO.registerWith();
      } catch (err) {
        print(
          '`file_picker` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterImageCompressCommon.registerWith();
      } catch (err) {
        print(
          '`flutter_image_compress_common` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        IOSFlutterLocalNotificationsPlugin.registerWith();
      } catch (err) {
        print(
          '`flutter_local_notifications` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        GeolocatorApple.registerWith();
      } catch (err) {
        print(
          '`geolocator_apple` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        ImagePickerIOS.registerWith();
      } catch (err) {
        print(
          '`image_picker_ios` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        LocalAuthDarwin.registerWith();
      } catch (err) {
        print(
          '`local_auth_darwin` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PathProviderFoundation.registerWith();
      } catch (err) {
        print(
          '`path_provider_foundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SharedPreferencesFoundation.registerWith();
      } catch (err) {
        print(
          '`shared_preferences_foundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SqfliteDarwin.registerWith();
      } catch (err) {
        print(
          '`sqflite_darwin` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UriToFilePluginIOS.registerWith();
      } catch (err) {
        print(
          '`uri_to_file` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UrlLauncherIOS.registerWith();
      } catch (err) {
        print(
          '`url_launcher_ios` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        AVFoundationVideoPlayer.registerWith();
      } catch (err) {
        print(
          '`video_player_avfoundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        WebKitWebViewPlatform.registerWith();
      } catch (err) {
        print(
          '`webview_flutter_wkwebview` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

    } else if (Platform.isLinux) {
      try {
        ConnectivityPlusLinuxPlugin.registerWith();
      } catch (err) {
        print(
          '`connectivity_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        DeviceInfoPlusLinuxPlugin.registerWith();
      } catch (err) {
        print(
          '`device_info_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FilePickerLinux.registerWith();
      } catch (err) {
        print(
          '`file_picker` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FileSelectorLinux.registerWith();
      } catch (err) {
        print(
          '`file_selector_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterKeyboardVisibilityPluginLinux.registerWith();
      } catch (err) {
        print(
          '`flutter_keyboard_visibility_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        LinuxFlutterLocalNotificationsPlugin.registerWith();
      } catch (err) {
        print(
          '`flutter_local_notifications_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        ImagePickerLinux.registerWith();
      } catch (err) {
        print(
          '`image_picker_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PackageInfoPlusLinuxPlugin.registerWith();
      } catch (err) {
        print(
          '`package_info_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PathProviderLinux.registerWith();
      } catch (err) {
        print(
          '`path_provider_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        RecordLinux.registerWith();
      } catch (err) {
        print(
          '`record_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SharedPreferencesLinux.registerWith();
      } catch (err) {
        print(
          '`shared_preferences_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UrlLauncherLinux.registerWith();
      } catch (err) {
        print(
          '`url_launcher_linux` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        WakelockPlusLinuxPlugin.registerWith();
      } catch (err) {
        print(
          '`wakelock_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

    } else if (Platform.isMacOS) {
      try {
        FilePickerMacOS.registerWith();
      } catch (err) {
        print(
          '`file_picker` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FileSelectorMacOS.registerWith();
      } catch (err) {
        print(
          '`file_selector_macos` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterImageCompressMacos.registerWith();
      } catch (err) {
        print(
          '`flutter_image_compress_macos` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterKeyboardVisibilityPluginMacos.registerWith();
      } catch (err) {
        print(
          '`flutter_keyboard_visibility_macos` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        MacOSFlutterLocalNotificationsPlugin.registerWith();
      } catch (err) {
        print(
          '`flutter_local_notifications` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        GeolocatorApple.registerWith();
      } catch (err) {
        print(
          '`geolocator_apple` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        ImagePickerMacOS.registerWith();
      } catch (err) {
        print(
          '`image_picker_macos` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        LocalAuthDarwin.registerWith();
      } catch (err) {
        print(
          '`local_auth_darwin` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PathProviderFoundation.registerWith();
      } catch (err) {
        print(
          '`path_provider_foundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SharedPreferencesFoundation.registerWith();
      } catch (err) {
        print(
          '`shared_preferences_foundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SqfliteDarwin.registerWith();
      } catch (err) {
        print(
          '`sqflite_darwin` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UrlLauncherMacOS.registerWith();
      } catch (err) {
        print(
          '`url_launcher_macos` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        AVFoundationVideoPlayer.registerWith();
      } catch (err) {
        print(
          '`video_player_avfoundation` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        WakelockPlusMacOSPlugin.registerWith();
      } catch (err) {
        print(
          '`wakelock_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        WebKitWebViewPlatform.registerWith();
      } catch (err) {
        print(
          '`webview_flutter_wkwebview` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

    } else if (Platform.isWindows) {
      try {
        DeviceInfoPlusWindowsPlugin.registerWith();
      } catch (err) {
        print(
          '`device_info_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FilePickerWindows.registerWith();
      } catch (err) {
        print(
          '`file_picker` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FileSelectorWindows.registerWith();
      } catch (err) {
        print(
          '`file_selector_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        FlutterKeyboardVisibilityPluginWindows.registerWith();
      } catch (err) {
        print(
          '`flutter_keyboard_visibility_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        ImagePickerWindows.registerWith();
      } catch (err) {
        print(
          '`image_picker_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        LocalAuthWindows.registerWith();
      } catch (err) {
        print(
          '`local_auth_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PackageInfoPlusWindowsPlugin.registerWith();
      } catch (err) {
        print(
          '`package_info_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        PathProviderWindows.registerWith();
      } catch (err) {
        print(
          '`path_provider_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        SharedPreferencesWindows.registerWith();
      } catch (err) {
        print(
          '`shared_preferences_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        UrlLauncherWindows.registerWith();
      } catch (err) {
        print(
          '`url_launcher_windows` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

      try {
        WakelockPlusWindowsPlugin.registerWith();
      } catch (err) {
        print(
          '`wakelock_plus` threw an error: $err. '
          'The app may not function as expected until you remove this plugin from pubspec.yaml'
        );
      }

    }
  }
}
