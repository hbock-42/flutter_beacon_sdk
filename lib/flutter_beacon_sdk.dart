
import 'flutter_beacon_sdk_platform_interface.dart';

class FlutterBeaconSdk {
  Future<String?> getPlatformVersion() {
    return FlutterBeaconSdkPlatform.instance.getPlatformVersion();
  }
}
