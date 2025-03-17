import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_baidu_mapapi_base/src/map/bmf_types.dart';

import 'flutter_baidu_mapapi_base_platform_interface.dart';

/// 鉴权方法名
const kSetAPIKey = 'flutter_bmfbase/sdk/setApiKey';

/// 隐私政策
const kSetPrivacyAPIKey = 'flutter_bmfbase/sdk/setAgreePrivacy';

class MethodChannelFlutterPluginBaiduMapapiBase extends FlutterBaiduMapapiBasePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_bmfbase');

  @override
  // TODO: implement nativeBaseVersion
  Future<Map?> get nativeBaseVersion async {
    Map? result;
    try {
      result = await methodChannel.invokeMethod('flutter_bmfbase/sdk/getNativeBaseVersion') as Map?;
    } on PlatformException catch (e) {
      print(e.toString());
    }
    return result;
  }

  @override
  Future<void> setAgreePrivacy(bool isAgree) async {
    try {
      await methodChannel.invokeMethod(kSetPrivacyAPIKey, {'isAgree': isAgree});
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future<void> setApiKeyAndCoordType(String apiKey, BMF_COORD_TYPE coordType) async {
    try {
      await methodChannel
          .invokeMethod(kSetAPIKey, {'apiKey': apiKey, 'BMF_COORD_TYPE': coordType.index});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  Future<void> setCoordType(BMF_COORD_TYPE coordType) async {
    try {
      await methodChannel.invokeMethod(kSetAPIKey, {'BMF_COORD_TYPE': coordType.index});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }
}
