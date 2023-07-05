import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bluejay_platform_interface.dart';

/// An implementation of [BluejayPlatform] that uses method channels.
class MethodChannelBluejay extends BluejayPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bluejay');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
