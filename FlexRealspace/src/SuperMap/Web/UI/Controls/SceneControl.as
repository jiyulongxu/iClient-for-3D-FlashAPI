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
	
	
	
	[Event(name="succeedCallback", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="failedCallback", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="objectSelected", type="SuperMap.Web.Util.CallBackEvent")]
	
	[Event(name="measureDistance", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="measureArea", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="measureHeight", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="measureDistanceFinished", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="measureAreaFinished", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="measureHeightFinished", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="flownEnd", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="addExcavationRegion", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="bubbleInitialize", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="bubbleResize", type="SuperMap.Web.Util.CallBackEvent")]
	[Event(name="bubbleClose", type="SuperMap.Web.Util.CallBackEvent")]
	
	/**
	 * 三维场景控件类
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
		 * 在js端对应的类的全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Controls.SceneControl";
		/**
		 * 构造函数
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
		 * strServerUrl：服务器发布的 pluginversion.xml 文件地址。
		 * 如果有新版本的插件则返回新版本的插件服务器地址；如果没有新版本则返回“当前无可用版本”。
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
		 * point3D：地理坐标下的三维点 Point3D。
		 * 二维屏幕像素坐标点 Point。
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
		 * point：二维屏幕像素坐标点。
		 * 三维点对象，包括经纬度跟高程信息。
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
		 */
		public function removeEvent(eventName:String,handler:Function):Boolean
		{
			removeEventListener(eventName,handler);	
			return true;
		}
		/**
		 * 获取当前设置的异步助手。使得用户可以通过异步下载的方式获取场景服务中的图层。
		 * 
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
		 * 重写基类的回调函数，后期参数肯定需要添加
		 * 此方法主要作用在于按照传回来的参数分发给此对象里面应该来处理的方法，
		 * 并且将需要的参数传给此方法
		 * 主要用于筛选，具体处理在每个方法内部处理
		 */
		override protected function callback(params:String,array:Object):void
		{
			
			switch(params)
			{
				case "succeedCallback":
				{
					dispatchEvent(new CallBackEvent("succeedCallback",false,false,array));
					break;
				}
				case "failedCallback":
				{
					dispatchEvent(new CallBackEvent("failedCallback",false,false,array));
					break;
				}
				case "objectSelected":
				{
					dispatchEvent(new CallBackEvent("objectSelected",false,false,array));
					break;
				}
				case "measureDistance":
				{
					dispatchEvent(new CallBackEvent("measureDistance",false,false,array));
					break;
				}
				case "measureArea":
				{
					dispatchEvent(new CallBackEvent("measureArea",false,false,array));
					break;
				}
				case "measureHeight":
				{
					dispatchEvent(new CallBackEvent("measureHeight",false,false,array));
					break;
				}
				case "measureDistanceFinished":
				{
					dispatchEvent(new CallBackEvent("measureDistanceFinished",false,false,array));
					break;
				}
				case "measureAreaFinished":
				{
					dispatchEvent(new CallBackEvent("measureAreaFinished",false,false,array));
					break;
				}
				case "measureHeightFinished":
				{
					dispatchEvent(new CallBackEvent("measureHeightFinished",false,false,array));
					break;
				}
				case "flownEnd":
				{
					dispatchEvent(new CallBackEvent("flownEnd",false,false,array));
					break;
				}
				case "addExcavationRegion":
				{
					dispatchEvent(new CallBackEvent("addExcavationRegion",false,false,array));
					break;
				}
				case "bubbleInitialize":
				{
					dispatchEvent(new CallBackEvent("bubbleInitialize",false,false,array));
					break;
				}
				case "bubbleResize":
				{
					dispatchEvent(new CallBackEvent("bubbleResize",false,false,array));
					break;
				}
				case "bubbleClose":
				{
					dispatchEvent(new CallBackEvent("bubbleClose",false,false,array));
					break;
				}
					
				default:
				{
					break;
				}
			}
		}
		
	}
}