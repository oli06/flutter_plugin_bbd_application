import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginBbdApplication {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_bbd_application');

    static Future<String> get bbdUserId2 async {
    final String userId = await _channel.invokeMethod('getUserId2');
    return userId;
  }

  static void showPreferenceUI() {
    _channel.invokeMethod('showPreferenceUI');
  }

  static Future<String> get getVersion async {
    return await _channel.invokeMethod('getVersion');
  }

  static Future<List<String>> get getApplicationConfig async {
    final List<String> data = await _channel.invokeMethod('getApplicationConfig');

    return data;
  }
}
