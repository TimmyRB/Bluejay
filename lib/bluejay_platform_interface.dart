import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bluejay_method_channel.dart';

abstract class BluejayPlatform extends PlatformInterface {
  /// Constructs a BluejayPlatform.
  BluejayPlatform() : super(token: _token);

  static final Object _token = Object();

  static BluejayPlatform _instance = MethodChannelBluejay();

  /// The default instance of [BluejayPlatform] to use.
  ///
  /// Defaults to [MethodChannelBluejay].
  static BluejayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BluejayPlatform] when
  /// they register themselves.
  static set instance(BluejayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
