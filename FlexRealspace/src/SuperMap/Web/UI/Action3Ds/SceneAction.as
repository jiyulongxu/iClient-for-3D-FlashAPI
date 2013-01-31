package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	import SuperMap.Web.Util.CallBackEvent;
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 添加或移除 onMouseUptopic1604 及 onDbClick 操作结束后的回调函数
	 */
	[Event(name="actionCompleted", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下单击鼠标左键时触发的事件
	 */
	[Event(name="onClick", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下双击鼠标左键时触发的事件
	 */
	[Event(name="onDbClick", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 在三维场景控件具有焦点的情况下用户按任意键时触发的事件
	 */
	[Event(name="onKeyDown", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 在三维场景控件具有焦点的情况下用户释放任意键时触发的事件
	 */
	[Event(name="onKeyUp", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下按下鼠标左键时触发的事件
	 */
	[Event(name="onMouseDown", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下移动鼠标指针时触发的事件
	 */
	[Event(name="onMouseMove", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 当鼠标离开三维场景控件的边界区域时，触发该事件
	 */
	[Event(name="onMouseOut", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 在鼠标指针悬停在三维场景控件上时触发的事件
	 */
	[Event(name="onMouseOver", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下抬起鼠标左键时触发的事件
	 */
	[Event(name="onMouseUp", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 鼠标指针悬停在三维场景控件上的情况下用户滚动鼠标滚轮时触发的事件
	 */
	[Event(name="onMouseWheel", type="SuperMap.Web.Util.CallBackEvent")]
	
	/**
	 * 所有界面交互操作的父类
	 * （不可以初始化，对外开放）
	 * 该类主要用于扩展交互操作类，实现特定的交互功能。在扩展 SceneAction 时，扩展类中可以使用一个或组合多个 SceneActionType 中提供的操作，从而在一个类中完成一系列操作
	 */
	public class SceneAction extends ClassBase
	{
		/**
		 * @param sceneControl 与 SceneAction 关联的三维场景控件（SuperMap.Web.UI.Controls.SceneControl类型）
		 * @param key 此对象的唯一标示
		 * @param isNew 是否需要往js端发送消息
		 * @param array 记录属性的键值对
		 */
		public function SceneAction(sceneControl:Object=null,key:Number=0,isNew:Boolean=true,array:Object=null)
		{
			super(key,isNew,array);
			//激活所有事件
			this.activateAllEvent();
		}
		/**
		 * 获取交互操作的名称。当用户自行开发一个 SceneAction 子类时，可自定义该操作的名称。
		 * @return 返回交互操作的名称
		 */
		public function get_name():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			var result:String=this.flexToJsCall(array) as String;
			return result.split("$")[0];
		}
		/**
		 * 设置交互操作的名称。当用户自行开发一个 SceneAction 子类时，可自定义该操作的名称。 
		 * @param value 需要设置的交互操作的名称
		 */
		public function set_name(value:String):void
		{
			var realArgument:Array=[
				value.toString()+"$String"
			];
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
		 * 获取与 SceneAction 联动的三维场景控件。
		 * @return 返回与 SceneAction 联动的三维场景控件
		 */
		public function get_sceneControl():SceneControl
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sceneControl",
					isReturn:true
			};
			return this.flexToJsCall(array) as SceneControl;
		}
		/**
		 * 设置与 SceneAction 联动的三维场景控件。
		 * @param value 需要设置的与 SceneAction 联动的三维场景控件
		 */
		public function set_sceneControl(value:SceneControl):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_sceneControl",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取用户交互操作类型。
		 * @return 返回用户交互操作类型（SceneActionType）
		 */
		public function get_type():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_type",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置用户交互操作类型。
		 * @param value 需要设置的用户交互操作类型（SceneActionType）
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
		 * 添加actionCompleted事件
		 * @param handler 回调函数
		 */
		public function add_actionCompleted(handler:Function):void
		{
			addEventListener("actionCompleted",handler);
			var realArgument:Array=["actionCompleted$Function"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"add_actionCompleted",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 移除actionCompleted事件
		 * @param handler 回调函数
		 */
		public function remove_actionCompleted(handler:Function):void
		{
			removeEventListener("actionCompleted",handler);
		}
		/**
		 * 发送消息给js端激活此对象的所有事件
		 */
		private function activateAllEvent():void
		{
			//需要将对象的key传递过去添加成为对象的字段
			var realArgument:Array=[
				this.KEY.toString()+"$Number"
			];
			//动态添加字段的方法为addKey
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"addKey",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 注册回调事件
		 * @param eventName 事件名称
		 * @param handler 回调函数
		 */
		public function addEvent(eventName:String,handler:Function):void
		{
			addEventListener(eventName,handler);
		}
		/**
		 * 移除与事件绑定的指定回调函数 handler。
		 * @param eventName 事件名称
		 * @param handler 回调函数
		 */
		public function removeEvent(eventName:String,handler:Function):void
		{
			removeEventListener(eventName,handler);	
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