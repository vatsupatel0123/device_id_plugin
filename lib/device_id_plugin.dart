import 'package:flutter/services.dart';

class DeviceIdPlugin {
  static const MethodChannel _channel = MethodChannel('device_id_plugin');

  static Future<String?> getAndroidId() async {
    final String? id = await _channel.invokeMethod('getAndroidId');
    return id;
  }
}
