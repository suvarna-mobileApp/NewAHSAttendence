import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_geofence_platform_interface.dart';

/// An implementation of [FlutterGeofencePlatform] that uses method channels.
class MethodChannelFlutterGeofence extends FlutterGeofencePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_geofence');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
