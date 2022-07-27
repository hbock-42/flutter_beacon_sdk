import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_beacon_sdk_method_channel.dart';

abstract class FlutterBeaconSdkPlatform extends PlatformInterface {
  /// Constructs a FlutterBeaconSdkPlatform.
  FlutterBeaconSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBeaconSdkPlatform _instance = MethodChannelFlutterBeaconSdk();

  /// The default instance of [FlutterBeaconSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBeaconSdk].
  static FlutterBeaconSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBeaconSdkPlatform] when
  /// they register themselves.
  static set instance(FlutterBeaconSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
