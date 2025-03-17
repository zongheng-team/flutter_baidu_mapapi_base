import 'package:flutter_baidu_mapapi_base/src/map/bmf_types.dart';

import '../platform/flutter_baidu_mapapi_base_platform_interface.dart';

/// 地图sdk初始化鉴权
class BMFMapSDK {
  static final FlutterBaiduMapapiBasePlatform _platform = FlutterBaiduMapapiBasePlatform.instance;

  /// 初始化百度地图sdk
  ///
  /// apiKey 百度地图开放平台申请的ak
  /// coordType 坐标类型 目前不支持将全局坐标类型设置为WGS84
  static void setApiKeyAndCoordType(String apiKey, BMF_COORD_TYPE coordType) async {
    await _platform.setApiKeyAndCoordType(apiKey, coordType);
  }

  /// 设置地图坐标类型
  ///
  /// coordType 坐标类型，目前不支持将全局坐标类型设置为WGS84
  static void setCoordType(BMF_COORD_TYPE coordType) async {
    await _platform.setCoordType(coordType);
  }

  /// 设置用户是否同意SDK隐私协议，默认false，since 3.1.0
  ///
  /// 设置为false时，将影响地图SDK所有检索组件功能的使用
  ///
  /// 隐私政策官网链接：https://lbsyun.baidu.com/index.php?title=openprivacy
  /// isAgree 用户是否同意SDK隐私协议
  static void setAgreePrivacy(bool isAgree) async {
    await _platform.setAgreePrivacy(isAgree);
  }
}
