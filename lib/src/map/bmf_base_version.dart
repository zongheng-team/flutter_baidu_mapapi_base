import '../platform/flutter_baidu_mapapi_base_platform_interface.dart';

/// 获取原生地图base组件版本号 since 3.2.0
class BMFMapBaseVersion {
  static final FlutterBaiduMapapiBasePlatform _platform = FlutterBaiduMapapiBasePlatform.instance;

  /// 获取原生地图base组件版本号
  ///
  /// return 平台：xx 组件：xx 版本号：xx
  /// eg: {'platform':'ios', 'component': 'base', version':'6.0.0'}
  static Future<Map?> get nativeBaseVersion => _platform.nativeBaseVersion;
}
