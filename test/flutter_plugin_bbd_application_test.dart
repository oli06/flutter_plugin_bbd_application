import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_bbd_application/flutter_plugin_bbd_application.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_plugin_bbd_application');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterPluginBbdApplication.platformVersion, '42');
  });
}
