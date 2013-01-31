package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维场景的飞行管理类。
	 * （不可以初始化，对外开放）
	 * 该类作为 Scene 类的属性，当指定飞行路线后就可以开始飞行了，此时可以通过暂停、停止来控制当前飞行状态。
	 * 该类不能被创建，只能通过场景获取 Scene.get_flyManager()。
	 */
	public class FlyManager extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FlyManager";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyManager";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //获取Realspace控件的场景，控件和场景是一对一的捆绑关系
		 * scene=m_sceneControl.get_scene();
		 * //从 Scene 中获取当前场景飞行管理类对象
		 * var flyManager:FlyManager = scene.get_flyManager();
		 * //获取飞行路线集合类对象 
		 * var flyRoutes:FlyRoutes = flyManager.get_routes();
		 * //导入飞行路线文件 
		 * flyRoutes.fromFile("http://localhost:8090/RealspaceSample/NewSceneRoutes.fpf"); 
		 * //获取飞行路线类对象
		 * var flyRoute:FlyRoute = flyRoutes.get_currentRoute();
		 * //设置当前飞行路线是否可见
		 * flyRoute.set_isLinesVisible(true);
		 * //开始飞行 
		 * flyManager.play(); 
		 * </listing>
		 */
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
		 * @return 返回当前站点索引
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
		 * @param value 需要设置的当前站点索引
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
		 * @return 返回本次飞行需要的总时间
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
		 * @param value 需要设置的本次飞行需要的总时间
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
		 * @return 返回当前的飞行状态
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
		 * @return 返回飞行速率 
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
		 * @param value 需要设置的飞行速率
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
		 * @return 返回本次飞行的当前进度 
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
		 * @param value 需要设置的本次飞行的当前进度
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
		 * @return 返回飞行路线
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