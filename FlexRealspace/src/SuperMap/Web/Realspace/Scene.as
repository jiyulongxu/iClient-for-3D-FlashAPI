package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.GeoModel;
	import SuperMap.Web.Core.Point3D;
	import SuperMap.Web.Core.Rectangle2D;
	import SuperMap.Web.Util.ClassBase;
	
	import flash.utils.getDefinitionByName;

	/**
	 * 三维场景类
	 * 该类主要用于装载影像、模型、地形图层、屏幕图层、跟踪图层、飞行对象等。当加载三维场景时存在一个默认的三维场景。
	 * 有关 Scene 的详细信息请参见专题文档 三维场景控件和三维场景。
	 * 该类不可创建，只能通过 SceneControl.get_scene() 获取。
	 */
	public class Scene extends ClassBase
	{
		public var CLASSNAME:String="Scene";
		
		
		/**
		 * 在js端对应的类的全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Scene";
		
		public function Scene(object:Object=null)
		{
			//此类不允许主动创建，所以不需要向js端发送消息
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 关闭三维场景中加载的当前场景的所有图层。
		 */
		public function close():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"close",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 查找当前三维场景中图层的选择集。该方法返回的是 Selection3D 类对象的数组，
		 * 每一个 Selection3D 类对象对应三维场景中一个图层中所有处于选中状态的对象集合，若没有对象处于选中状态，则数组为空。
		 * hasObjectSelected：指定返回的选择集是所有图层的选择集，还是选择集对象不为空的图层选择集。当其为 true 时，返回选择集对象不为空的图层选择集，否则返回所有图层的选择集。
		 */
		public function findSelection3Ds(hasObjectSelected:Boolean=false):Array
		{
			var realArgument:Array=[hasObjectSelected.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"findSelection3Ds",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Array;
		}
		/**
		 * 获取指定位置的地形高度，如果指定位置未加载地形数据，则高度为0，单位：米。
		 * longitude：指定位置的经度
		 * latitude：指定位置的纬度
		 * 返回地形高度
		 */
		public function getAltitude(longitude:Number,latitude:Number):Number
		{
			var realArgument:Array=[longitude.toString()+"$Number",latitude.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getAltitude",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取渲染当前场景的平均帧数
		 */
		public function getAverageFPS():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getAverageFPS",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取场景数据下载进度值
		 * 场景数据下载进度值取值范围0-1。场景数据下载进度以图层为单位，取值为各个图层下载进度值的平均值
		 */
		public function getDataStreamingProgress():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getDataStreamingProgress",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取视图投影矩阵状态，即地球是否在转动。
		 * true 表示地球处于转动状态，false 表示地球处于静止状态。
		 */
		public function getViewWorldState():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getViewWorldState",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 打开指定场景及场景中的所有图层。
		 * 加载指定场景时，同时加载场景的环境变量包括环境光，背景色，地形夸张系数，相机，雾效，星空，大气层，经纬网等以及场景中的图层数据。 
		 * sceneAddressUrl：场景所在的服务器 URL 地址。
		 * sceneName：场景名称。
		 * 返回是否成功加载场景，true 表示成功加载，否则返回 false。
		 */
		public function open(sceneAddressUrl:String,sceneName:String):Boolean
		{
			var realArgument:Array=[sceneAddressUrl+"$String",sceneName+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"open",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 刷新三维场景
		 */
		public function refresh():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"refresh",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 重置地形图层。对地形图层进行增、删、可见不可见设置时都需调用此函数仅刷新地形显示。
		 */
		public function resetTerrain():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"resetTerrain",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 设置实时栅格化是否刷新。在三维系统中如果出现栅格数据显示问题，可以调用该函数仅刷新栅格数据的显示。
		 * bRefreshRaster：是否实时对栅格数据刷新。true，表示实时对栅格数据进行刷新。
		 */
		public function setRefreshRaster(bRefreshRaster:Boolean):void
		{
			var realArgument:Array=[bRefreshRaster+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"setRefreshRaster",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 更新场景的缓存。通过该方法可以将场景的缓存删除，当重新浏览场景时会自动重新下载缓存，达到更新缓存的效果。
		 * 返回删除缓存的大小，单位KB。
		 */
		public function updateCacheFile():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"updateCacheFile",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 全幅显示三维地图场景。 
		 */
		public function viewEntire():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"viewEntire",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取当前场景下绑定对象的偏移量。 
		 */
		public function get_autoLockOffset():Point3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_autoLockOffset",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point3D;
		}
		/**
		 * 设置当前场景下绑定对象的偏移量。
		 */
		public function set_autoLockOffset(value:Point3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_autoLockOffset",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取当前场景的绑定对象。 
		 */
		public function get_autoLockTarget():GeoModel
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_autoLockTarget",
					isReturn:true
			};
			return this.flexToJsCall(array) as GeoModel;
		}
		/**
		 * 设置当前场景的绑定对象。
		 */
		public function set_autoLockTarget(value:GeoModel):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_autoLockTarget",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取小场景的范围。 
		 */
		public function get_bounds(): Rectangle2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_bounds",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Rectangle2D;
		}
		/**
		 * 设置小场景的范围。
		 */
		public function set_bounds(value:Rectangle2D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_bounds",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取当前场景的相机对象，相机相当于视点。 
		 */
		public function get_camera(): Camera
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_camera",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Camera;
		}
		/**
		 * 设置当前场景的相机对象，相机相当于视点。
		 */
		public function set_camera(value:Camera):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_camera",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取当前场景的比例尺。 
		 */
		public function get_currentScale(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_currentScale",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		
		/**
		 * 获取当前场景的第一人称相机。
		 */
		public function get_firstPersonCamera(): Camera
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_firstPersonCamera",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Camera;
		}
		/**
		 * 设置当前场景的第一人称相机。
		 */
		public function set_firstPersonCamera(value:Camera):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_firstPersonCamera",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取当前场景的飞行操作对象。
		 * 该属性主要用于设置场景的飞行状态，指定飞向下一个场景的方位、控制飞行方式以及飞行动画。
		 */
		public function get_flyingOperator():FlyingOperator
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_flyingOperator",
					isReturn:true
			};
			return this.flexToJsCall(array) as FlyingOperator;
		}
		
		/**
		 * 获取当前场景飞行管理对象。 
		 */
		public function get_flyManager():FlyManager
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_flyManager",
					isReturn:true
			};
			return this.flexToJsCall(array) as FlyManager;
		}
		
		/**
		 * 获取当前场景相机张角，单位：度。
		 */
		public function get_fov(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_fov",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		/**
		 * 设置当前场景相机张角，单位：度。
		 */
		public function set_fov(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_fov",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取当前场景的全球底图类对象。
		 */
		public function get_globalImage():GlobalImage
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_globalImage",
					isReturn:true
			};
			return this.flexToJsCall(array) as GlobalImage;
		}
		
		/**
		 * 获取当前场景是否为第一人称视角。
		 */
		public function get_isFirstPersonView(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isFirstPersonView",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置当前场景是否为第一人称视角。
		 */
		public function set_isFirstPersonView(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isFirstPersonView",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维图层集合对象。
		 */
		public function get_layer3Ds():Layer3Ds
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_layer3Ds",
					isReturn:true
			};
			return this.flexToJsCall(array) as Layer3Ds;
		}
		
		/**
		 * 获取场景的名称。
		 */
		public function get_name(): String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			return this.flexToJsCall(array) as  String;
		}
		/**
		 * 设置场景的名称。
		 */
		public function set_name(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_name",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取场景中各种界面元素的可见性的集合，如经纬网、大气层等界面元素的可见性。
		 */
		public function get_sceneOption(): SceneOption
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sceneOption",
					isReturn:true
			};
			return this.flexToJsCall(array) as  SceneOption;
		}
		
		/**
		 * 获取场景中的屏幕图层。
		 */
		public function get_screenLayer3D(): ScreenLayer3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_screenLayer3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as  ScreenLayer3D;
		}
		
		/**
		 * 获取当前场景立体显示类对象。
		 */
		public function get_stereo(): Stereo
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_stereo",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Stereo;
		}
		
		/**
		 * 获取当前场景下的太阳对象。
		 */
		public function get_sun(): Sun
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sun",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Sun;
		}
		
		
		
		/**
		 * 获取地形夸大的比例。地形夸大是将地形的高按一定比例进行拉伸。
		 */
		public function get_terrainExaggeration(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_terrainExaggeration",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		/**
		 * 设置地形夸大的比例。地形夸大是将地形的高按一定比例进行拉伸。
		 */
		public function set_terrainExaggeration(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_terrainExaggeration",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取三维场景中的地形图层集合。
		 */
		public function get_terrainLayers(): TerrainLayers
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_terrainLayers",
					isReturn:true
			};
			return this.flexToJsCall(array) as  TerrainLayers;
		}
		
		
		/**
		 * 获取场景中的跟踪图层。
		 */
		public function get_trackingLayer3D(): TrackingLayer3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_trackingLayer3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as  TrackingLayer3D;
		}
		
		
		
		/**
		 * 获取当前场景模式。
		 */
		public function get_type(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_type",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		/**
		 * 设置当前场景模式。
		 */
		public function set_type(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_type",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取当前场景的地下类对象。
		 */
		public function get_underground(): Underground
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_underground",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Underground;
		}
		
		/**
		 * 获取当前场景窗口所对应的地理范围。
		 */
		public function get_viewBounds(): Rectangle2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_viewBounds",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Rectangle2D;
		}
		
		/**
		 * 获取当前场景窗口的像素高度。
		 */
		public function get_viewWndHeight(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_viewWndHeight",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		
		/**
		 * 获取当前场景窗口的像素宽度。
		 */
		public function get_viewWndWidth(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_viewWndWidth",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
		
	}
}