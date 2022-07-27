import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_beacon_sdk/flutter_beacon_sdk.dart';
import 'package:flutter_beacon_sdk/flutter_beacon_sdk_platform_interface.dart';
import 'package:flutter_beacon_sdk/flutter_beacon_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBeaconSdkPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterBeaconSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBeaconSdkPlatform initialPlatform = FlutterBeaconSdkPlatform.instance;

  test('$MethodChannelFlutterBeaconSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBeaconSdk>());
  });

  test('getPlatformVersion', () async {
    FlutterBeaconSdk flutterBeaconSdkPlugin = FlutterBeaconSdk();
    MockFlutterBeaconSdkPlatform fakePlatform = MockFlutterBeaconSdkPlatform();
    FlutterBeaconSdkPlatform.instance = fakePlatform;
  
    expect(await flutterBeaconSdkPlugin.getPlatformVersion(), '42');
  });
}
