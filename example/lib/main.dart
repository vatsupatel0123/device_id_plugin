import 'package:flutter/material.dart';
import 'package:device_id_plugin/device_id_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _deviceId = 'Unknown';

  @override
  void initState() {
    super.initState();
    getDeviceId();
  }

  Future<void> getDeviceId() async {
    String? id = await DeviceIdPlugin.getAndroidId();
    setState(() {
      _deviceId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Device ID Plugin Example')),
        body: Center(child: Text('ANDROID_ID: $_deviceId')),
      ),
    );
  }
}
