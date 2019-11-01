import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginBbdApplication {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_bbd_application');

  static void showPreferenceUI() {
    _channel.invokeMethod('showPreferenceUI');
  }

  static Future<String> get getVersion async {
    return await _channel.invokeMethod('getVersion');
  }

  static Future<Map<String, dynamic>> get getApplicationConfig async {
    Map<dynamic, dynamic> result =
        await _channel.invokeMethod('getApplicationConfig');

    return Future.value(new Map<String, dynamic>.from(result));
  }
}
