import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_geofence_method_channel.dart';

abstract class FlutterGeofencePlatform extends PlatformInterface {
  /// Constructs a FlutterGeofencePlatform.
  FlutterGeofencePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGeofencePlatform _instance = MethodChannelFlutterGeofence();

  /// The default instance of [FlutterGeofencePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGeofence].
  static FlutterGeofencePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGeofencePlatform] when
  /// they register themselves.
  static set instance(FlutterGeofencePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
