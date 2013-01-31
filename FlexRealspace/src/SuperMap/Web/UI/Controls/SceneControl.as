package SuperMap.Web.UI.Controls
{
	import SuperMap.Web.Core.Point;
	import SuperMap.Web.Core.Point3D;
	import SuperMap.Web.Realspace.AsyncHelper;
	import SuperMap.Web.Realspace.Bubbles;
	import SuperMap.Web.Realspace.Layer3DServicesList;
	import SuperMap.Web.Realspace.Scene;
	import SuperMap.Web.Realspace.SceneServicesList;
	import SuperMap.Web.Realspace.Selection3D;
	import SuperMap.Web.UI.Action3Ds.SceneAction;
	import SuperMap.Web.Util.CallBackEvent;
	import SuperMap.Web.Util.ClassBase;
	import SuperMap.Web.Util.SceneDiv;
	
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	
	
	/**
	 * 回调成功事件
	 */
	[Event(name="succeedCallback", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 回调失败事件
	 */
	[Event(name="failedCallback", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 地物被选择事件
	 */
	[Event(name="objectSelected", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 执行距离量算和依地距离量算事件
	 */
	[Event(name="measureDistance", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 执行面积量算事件
	 */
	[Event(name="measureArea", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 执行高度量算事件
	 */
	[Event(name="measureHeight", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 距离量算和依地距离量算结束事件
	 */
	[Event(name="measureDistanceFinished", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 面积量算结束事件
	 */
	[Event(name="measureAreaFinished", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 高度量算结束事件
	 */
	[Event(name="measureHeightFinished", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 飞行结束事件
	 */
	[Event(name="flownEnd", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 绘制区域事件
	 */
	[Event(name="addExcavationRegion", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 气泡初始化事件
	 */
	[Event(name="bubbleInitialize", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 气泡移动事件
	 */
	[Event(name="bubbleResize", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 气泡关闭事件
	 */
	[Event(name="bubbleClose", type="SuperMap.Web.Util.CallBackEvent")]
	
	/**
	 * 三维场景控件类
	 * （可以初始化，对外开放）
	 * 该控件实际是一个 ActiveX 控件，它能够实现控件和脚本库版本的自动检测，提示用户进行版本更新，并提供下载新版本的服务器信息。
	 * 三维场景控件是三维核心控件，主要用于装载三维场景 Scene，获取或者设置用户与三维场景的交互操作 SceneAction，响应鼠标和键盘消息 EventObject，
	 * 获取 SuperMap iServer Java 6R 提供的场景服务器信息 SceneServicesList 和图层服务信息 Layer3DServicesList。
	 */
	public class SceneControl extends ClassBase
	{
		/**
		 * 用于对象的识别
		 */
		public var CLASSNAME:String="SceneControl";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Controls.SceneControl";
		/**
		 * 初始化 SceneControl 类的新实例
		 * 
		 * @param div 三维控件所需的 DIV 标记，构造函数通过 DIV 的 ID 标记进行初始化。（SuperMap.Web.Util.SceneDiv类型）
		 * @param succeedCallback 场景加载成功后执行的回调函数
		 * @param failedCallback 场景加载失败后执行的回调函数
		 * 
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * private var m_sceneControl:SceneControl;
		 * private var m_scene:SuperMap.Web.Realspace.Scene;
		 * //程序初始化所有控件之后
		 * protected function application1_creationCompleteHandler(event:FlexEvent):void
		 * {
		 * 	//初始化三维场景控件实例
		 * 	m_sceneControl=new SceneControl(mySceneControl,succeedCallBack,failedCallBack);
		 * }
		 * //控件初始化完成后的回调函数，初始化完成之后才能进行数据加载
		 * private function succeedCallBack(event:CallBackEvent):void
		 * {
		 * 	//获取Realspace控件的场景，控件和场景是一对一的捆绑关系
		 * 	m_scene=m_sceneControl.get_scene();
		 * 	//新建一个照相机对象，把照相机的位置设置为中国的中心点
		 * 	var camera:SuperMap.Web.Realspace.Camera=new SuperMap.Web.Realspace.Camera(104.348,28.708,10288740.0);
		 * 	//将场景的视点移动到中国区域
		 * 	m_scene.get_flyingOperator().flyTo(camera,5000);
		 * }
		 * //控件初始化失败后的回调函数
		 * private function failedCallBack(event:CallBackEvent):void
		 * {
		 * 	trace("Realspace initialized failed!");
		 * }
		 * </listing>
		 */
		public function SceneControl(div:Object=null,succeedCallback:Function=null,failedCallback:Function=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(div is SceneDiv)
			{
				addEventListener("succeedCallback",succeedCallback);
				addEventListener("failedCallback",failedCallback);
				key=0;
				isNew=true;
				var realArgument:Array=[div.id.toString()+"$Element","succeedCallback$Function","failedCallback$Function"];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=div["isNew"] as Number;
				isNew=div["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		
		/**
		 * 在地图控件中添加事件，将事件与回调函数 handler 绑定。
		 * 即当 eventName 指定的事件发生时，完成 handler 回调函数中的操作。
		 * @param eventName 事件名称
		 * @param handler 绑定的回调函数
		 * @return 返回事件是否添加成功
		 */
		public function addEvent(eventName:String,handler:Function):Boolean
		{
			addEventListener(eventName,handler);
			var realArgument:Array=[eventName.toString()+"$String",eventName+"$Function"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"addEvent",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 通过在服务端发布的 pluginversion.xml 文件来判断本地插件版本是否为最新。若不是最新版本，则获取新版本的下载地址。
		 * @param strServerUrl 服务器发布的 pluginversion.xml 文件地址。
		 * @return 如果有新版本的插件则返回新版本的插件服务器地址；如果没有新版本则返回“当前无可用版本”。
		 */
		public function checkPluginUpdate(strServerUrl:String):String
		{
			var realArgument:Array=[strServerUrl.toString()+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"checkPluginUpdate",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as String;
		}
		
		/**
		 * 获取本地插件的版本号。
		 * 如果只想获取本地插件的版本号使用该函数；如果要实现插件的更新，直接调用 CheckPluginUpdate 函数即可。
		 * @return 本地插件的版本号
		 */
		public function getPluginVersion():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getPluginVersion",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 将地理坐标下的三维点 Point3D 转成成屏幕二维点 Point。
		 * @param point3D 地理坐标下的三维点 Point3D。
		 * @return 二维屏幕像素坐标点 Point。
		 */
		public function globeToPixel(point3D:Point3D):Point
		{
			var realArgument:Array=[point3D.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"globeToPixel",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Point;
		}
		/**
		 * 将屏幕二维点 Point 转换成地理坐标系下的三维点 Point3D。
		 * @param point 二维屏幕像素坐标点。
		 * @return 三维点对象，包括经纬度跟高程信息。
		 */
		public function pixelToGlobe(point:Point):Point3D
		{
			var realArgument:Array=[point.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"pixelToGlobe",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Point3D;
		}
		/**
		 * 移除与事件绑定的指定回调函数 handler。
		 * @param eventName 事件名称
		 * @param handler 绑定的回调函数
		 * @return 返回事件是否移除成功
		 */
		public function removeEvent(eventName:String,handler:Function):Boolean
		{
			removeEventListener(eventName,handler);	
			return true;
		}
		/**
		 * 获取当前设置的异步助手。使得用户可以通过异步下载的方式获取场景服务中的图层。
		 * @return 返回当前设置的异步助手
		 */
		public function get_asyncHelper():AsyncHelper
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_asyncHelper",
					isReturn:true
			};
			return this.flexToJsCall(array) as AsyncHelper;
		}
		/**
		 * 获取当前场景中的气泡对象集合。
		 * @return 返回当前场景中的气泡对象集合
		 */
		public function get_bubbles():Bubbles
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_bubbles",
					isReturn:true
			};
			return this.flexToJsCall(array) as Bubbles;
		}
		/**
		 * 获取场景控件的边界与 IE 浏览器内边界的水平像素差
		 * @return 返回场景控件的边界与 IE 浏览器内边界的水平像素差
		 */
		public function get_controlOffsetX():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_controlOffsetX",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取场景控件的边界与 IE 浏览器内边界的垂直像素差 
		 * @return 返回场景控件的边界与 IE 浏览器内边界的垂直像素差
		 */
		public function get_controlOffsetY():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_controlOffsetY",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取场景窗口在失去焦点时，是否更新数据。
		 * @return 返回场景窗口在失去焦点时，是否更新数据
		 */
		public function get_isAlwaysUpdate():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isAlwaysUpdate",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 设置场景窗口在失去焦点时，是否更新数据。
		 * @param value 设置场景窗口在失去焦点时，是否更新数据
		 */
		public function set_isAlwaysUpdate(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isAlwaysUpdate",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取 SuperMap iServer Java 6R 服务端发布的三维图层集合服务列表。
		 * @return 返回SuperMap iServer Java 6R 服务端发布的三维图层集合服务列表
		 */
		public function get_layer3DServicesList():Layer3DServicesList
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_layer3DServicesList",
					isReturn:true
			};
			return this.flexToJsCall(array) as Layer3DServicesList;
		}
		
		/**
		 * 获取三维场景控件内部的三维场景
		 * @return 返回三维场景控件内部的三维场景
		 */
		public function get_scene():Scene
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_scene",
					isReturn:true
			};
			return this.flexToJsCall(array) as Scene;
		}
		/**
		 * 获取用户当前操作类型。
		 * @return 返回用户当前操作类型
		 */
		public function get_sceneAction():SceneAction
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_sceneAction",
					isReturn:true
			};
			return this.flexToJsCall(array) as SceneAction;
		}
		/**
		 * 设置当前三维场景的活动状态
		 * @param sceneAction 设置当前三维场景的活动状态
		 */
		public function set_sceneAction(sceneAction:SceneAction):void
		{
			var realArgument:Array=[sceneAction.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_sceneAction",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取 SuperMap iServer Java 6R 服务端发布的全部三维场景服务列表。
		 * @return 返回SuperMap iServer Java 6R 服务端发布的全部三维场景服务列表
		 */
		public function get_sceneServicesList():SceneServicesList
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sceneServicesList",
					isReturn:true
			};
			return this.flexToJsCall(array) as SceneServicesList;
		}
		
		/**
		 * 重写基类的回调函数
		 * 此方法主要作用在于按照传回来的参数分发给此对象里面应该来处理的外部方法，
		 * 并且将需要的数据传给此方法
		 * @param event 事件类型，用于回调后绑定外部处理函数
		 * @param array 回调的数据，提供给外部函数使用
		 */
		override protected function callback(event:String,array:Object):void
		{
			dispatchEvent(new CallBackEvent(event,false,false,array));
		}
		
	}
}