## 3.9.0

新增：

1、iOS新增TextMarker和IconMarker覆盖物绘制；

2、iOS新增setMapCenterToScreenPt接口；

3、iOS新增fitVisibleMapRectWithPadding接口；

4、map插件移除对device_info_plus的依赖；

## 3.8.1

适配：

1、升级适配Flutter SDK（Channel stable, 3.19.6）

## 3.8.0

新增：

1、骑行路线规划增加限行字段

2、Marker新增旋转参数

3、地图调起增加途经点

4、Android端3D建筑物支持设置圆角

## 3.7.2

修复：

1、更改点聚合模块回调逻辑；

## 3.7.1

修复：

1、Android修复地图更新状态时，回调不生效的问题；

2、Android地图引擎升级sqlite3库；

## 3.7.0

新增：

1、新增地图组件支持点聚合；

修复：

1、修复已知问题

## 3.6.0

新增：

1、路线规划、地图调起及步骑行导航算路支持poiid；

2、检索组件支持AOI面数据检索，地图组件支持AOI面数据检索数据绘制；polygon支持加密数据绘制；

3、新增自定义底图加载时的背景网格图片backgroundImage;

4、新增切换图层接口switchLayerOrder：支持覆盖物图层，自定义热力图层，新覆盖物图层交换图层顺序；

5、新增展示地形图层接口：showDEMLayer;

6、新增轨迹动画暂停和继续接口；

7、BMFOverlay新增customMap绑定不同的overlay；不支持infowindow和traceOverlay；

iOS新增：

1、flutter_baidu_mapapi_search组件新增id属性，用来区分不同的检索；

修复：

1、修复已知问题

## 3.5.0

新增：

1、 新增BMFPolyline支持发光效果；

2、 新增地图支持粒子效果；

3、 新增GLTF模型绘制支持动画及动画控制；

4、 新增覆盖物支持点击及回调；

5、 新增支持定位图标整体自定义，定位图标箭头模式自定义、定位精度圈支持线宽设置；（仅支持iOS）

6、 路书轨迹支持3D模型；

7、 新增热力图支持米单位半径参数，热力图动态更新接口updateHeatMap；

8、 新增3D立楼楼层动画；

9、 新增marker及其title碰撞poi功能；

10、新增showAnnotations支持padding设置；（仅支持iOS）

11、新增AnnotationView与地图POI碰撞接口：isOpenCollisionDetectionWithMapPOI，新增PaoPaoView参与碰撞接口：isOpenCollisionDetectionWithPaoPaoView；

## 3.4.1

修复：

1、 修复Android鉴权库不支持多签名问题；

2、 Android隐私数据安全升级，解决部分应用商店审核不通过问题；

## 3.4.0

新增：

1、 新增渐变圆绘制；

2、 新增自定义建筑物添加时的生长动画；

3、 新增空白地图设置背景色backgroundColor；

4、 Android新增轨迹动画图标；

5、 新增推荐上车点支持场站信息isNeedStationInfo；

6、 新增是否展示底图poi标签接口；

7、 iOS新增地图切换定位模式回调；

8、 iOS新增支持文本点击；

修复：

1、 修复持续返回到前台，检索回调没有的问题；

2、 修复3D棱柱绘制不出来问题；

3、 修复3D建筑物绘制不出来问题；

## 3.3.1

修复：

1、修复已知问题。

## 3.3.0

新增：

1、 iOS端新增文本绘制；

2、 poi检索新增adcode字段；

3、 骑行路线规划支持添加途径点；

4、 新增三维地理坐标转屏幕坐标接口screenPointFromMapPoint3；

5、 新增3D热力图效果和热力图初始化动画和帧动画；

6、 新增BMKGetMapMappingQualification（地图测绘资质接口）；

7、 新增BMKGetMapCopyrightInformation（版权信息接口）。

适配：

1、适配Flutter3.0；

## 3.2.0

地图Flutter插件3.2更新日志 

新增： 

1、Utils组件百度地图客户端调起新增摩托车、新能源车、货车导航调起；新能源，货车络线调起； 

2、map图层相关接口（switchOverlayLayerAndPOILayer）； 

3、mapOptions新增showOperateLayer属性；

4、marker新增碰撞策略；

5、marker新增updateIconData接口； 

6、overlay的属性更新接口（3D棱柱，大地曲线，渐变线，3D模型，polyline）； 

7、海量点新增点击回调，动态轨迹新增动画回调；

修复： 

Android修改屏幕坐标转换地理坐标失败问题  

变更： 

1、overlay，infoWindow的属性Id改为id;

2、废弃BMFMapAPI_Base类请使用BMFMapBaseVersion；

3、废弃BMFMapAPI_Map类请使用BMFMapVersion；

4、废弃BMFMapAPI_Search类请使用BMFMapSearchVersion；

5、废弃BMFMapAPI_Utils类请使用BMFMapUtilsVersion；

## 3.1.0

地图Flutter插件3.1更新日志 

新增： 

1、新增大地曲线绘制，polyline新增跨经度180属性； 

2、新增渐变线绘制； 

3、新增3D棱柱绘制； 

4、新增海量点绘制； 

5、新增3D模型绘制； 

6、新增动态轨迹绘制； 

7、overlay新增获取外接矩形bounds接口； 

8、marker新增customMap字段，iconData构造方法； 

9、map新增showmarkers接口（仅支持iOS端）； 

9、map新增language，fontsizelevel属性，驾车检索step节点下新增roadname字段 

10、map新增坐标换接口(地理坐标 <=> 屏幕坐标)； 

修复： 

Android端修复多地图页面切换删除overlay失效问题。 

Android端修复自定义定位图层样式设置方向不旋转问题。 

Android端修复LatLngBounds返回地理坐标问题。 
 
优化： 

升级引擎，提高引擎稳定性 

变更： 

1、增加隐私政策接口，BMFMapSDK.setAgreePrivacy(bool); 

2、BMFMarker()构造废弃，变更为BMFMarker.icon()和BMFMarker.iconData()构造 

3、新增删除traceOverlay接口，MapController.removeTraceOverlay(traceOverlay_id)； 

## 3.0.0

1、适配 null-safe

## 2.0.0

新增功能：
1、新增检索组件；
2、Circle、Polygon 增加镂空效果；
3、Circle、Polygon、Arcline、Dot、Ground、Text 支持属性更新。
问题修复：
1、规范了包名；
2、Marker、Polyline 事件回调返回完整了 Marker 和 Polyline 对象；
3、iOS 端兼容 swift、swift 与 Object-C 混编；
4、解决了部分 Android 机型上卫星图、路况图、百度城市热力图、自定义在线瓦片图不显示的问题；
5、Android 花屏问题解决；
6、全新 Demo。