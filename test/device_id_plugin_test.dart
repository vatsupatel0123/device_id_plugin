import 'package:flutter_test/flutter_test.dart';
import 'package:device_id_plugin/device_id_plugin.dart';
import 'package:device_id_plugin/device_id_plugin_platform_interface.dart';
import 'package:device_id_plugin/device_id_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceIdPluginPlatform
    with MockPlatformInterfaceMixin
    implements DeviceIdPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceIdPluginPlatform initialPlatform = DeviceIdPluginPlatform.instance;

  test('$MethodChannelDeviceIdPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceIdPlugin>());
  });

  test('getPlatformVersion', () async {
    DeviceIdPlugin deviceIdPlugin = DeviceIdPlugin();
    MockDeviceIdPluginPlatform fakePlatform = MockDeviceIdPluginPlatform();
    DeviceIdPluginPlatform.instance = fakePlatform;

    expect('1.0', '42');
  });
}
