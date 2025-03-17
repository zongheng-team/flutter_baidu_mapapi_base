import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../flutter_baidu_mapapi_base.dart';
import 'flutter_baidu_mapapi_base_method_channel.dart';

abstract class FlutterBaiduMapapiBasePlatform extends PlatformInterface {
  /// Constructs a FlutterPluginTestPlatform.
  FlutterBaiduMapapiBasePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBaiduMapapiBasePlatform _instance = MethodChannelFlutterPluginBaiduMapapiBase();

  /// The default instance of [FlutterPluginTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPluginTest].
  static FlutterBaiduMapapiBasePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPluginTestPlatform] when
  /// they register themselves.
  static set instance(FlutterBaiduMapapiBasePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> setApiKeyAndCoordType(String apiKey, BMF_COORD_TYPE coordType);

  Future<void> setCoordType(BMF_COORD_TYPE coordType);

  Future<void> setAgreePrivacy(bool isAgree);

  Future<Map?> get nativeBaseVersion;
}
