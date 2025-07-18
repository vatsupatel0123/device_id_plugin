import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_id_plugin_platform_interface.dart';

/// An implementation of [DeviceIdPluginPlatform] that uses method channels.
class MethodChannelDeviceIdPlugin extends DeviceIdPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_id_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
