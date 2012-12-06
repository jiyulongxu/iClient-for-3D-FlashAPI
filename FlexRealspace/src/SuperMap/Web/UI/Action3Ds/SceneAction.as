package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	import SuperMap.Web.Util.CallBackEvent;
	import SuperMap.Web.Util.ClassBase;
	
	[Event(name="actionCompleted", type="SuperMap.Web.Util.CallBackEvent")]
	
	public class SceneAction extends ClassBase
	{
		public function SceneAction(sceneControl:Object=null,key:Number=0,isNew:Boolean=true,array:Object=null)
		{
			super(key,isNew,array);
		}
		/**
		 * 获取交互操作的名称。当用户自行开发一个 SceneAction 子类时，可自定义该操作的名称。
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
		 * SceneActionType
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
		 * SceneActionType
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
		 */
		public function remove_actionCompleted(handler:Function):void
		{
			removeEventListener("actionCompleted",handler);
		}
		/**
		 * 重写基类的回调函数
		 * 此方法主要作用在于按照传回来的参数分发给此对象里面应该来处理的外部方法，
		 * 并且将需要的数据传给此方法
		 * event：事件类型，用于回调后绑定外部处理函数
		 * array：回调的数据，提供给外部函数使用
		 */
		override protected function callback(event:String,array:Object):void
		{
			dispatchEvent(new CallBackEvent(event,false,false,array));
		}
	}
}