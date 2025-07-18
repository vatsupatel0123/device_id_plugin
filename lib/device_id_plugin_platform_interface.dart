import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_id_plugin_method_channel.dart';

abstract class DeviceIdPluginPlatform extends PlatformInterface {
  /// Constructs a DeviceIdPluginPlatform.
  DeviceIdPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceIdPluginPlatform _instance = MethodChannelDeviceIdPlugin();

  /// The default instance of [DeviceIdPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceIdPlugin].
  static DeviceIdPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceIdPluginPlatform] when
  /// they register themselves.
  static set instance(DeviceIdPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
