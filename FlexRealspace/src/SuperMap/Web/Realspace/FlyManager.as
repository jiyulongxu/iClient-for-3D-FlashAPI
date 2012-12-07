package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维场景的飞行管理类。
	 * 该类作为 Scene 类的属性，当指定飞行路线后就可以开始飞行了，此时可以通过暂停、停止来控制当前飞行状态。
	 * 该类不能被创建，只能通过场景获取 Scene.get_flyManager()。
	 */
	public class FlyManager extends ClassBase
	{
		public var CLASSNAME:String="FlyManager";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyManager";
		
		public function FlyManager(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 设置是否达新站点。
		 */
		public function isArrivedNewStop():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"isArrivedNewStop",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 暂停当前飞行。
		 */
		public function pause():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"pause",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 按照指定路线飞行，或继续进行已被中断的飞行。
		 */
		public function play():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"play",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 停止当前飞行。
		 */
		public function stop():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"stop",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取当前站点索引。 
		 */
		public function get_currentStopIndex():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_currentStopIndex",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置当前站点索引。
		 */
		public function set_currentStopIndex(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_currentStopIndex",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取本次飞行（即当前整个路线）需要的总时间，单位为秒。 
		 */
		public function get_duration():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_duration",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置本次飞行（即当前整个路线）需要的总时间，单位为秒。 
		 */
		public function set_duration(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_duration",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取当前的飞行状态（停止，暂停，飞行中）。 
		 * FlyStatus 
		 */
		public function get_flyStatus():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_flyStatus",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 获取飞行速率。 
		 */
		public function get_playRate():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_playRate",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置飞行速率。 
		 */
		public function set_playRate(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_playRate",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取本次飞行的当前进度，单位为秒。  
		 */
		public function get_progress():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_progress",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置本次飞行的当前进度，单位为秒。 
		 */
		public function set_progress(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_progress",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取飞行路线。
		 */
		public function get_routes():FlyRoutes
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_routes",
					isReturn:true
			};
			return this.flexToJsCall(array) as FlyRoutes;
		}
		
	}
}