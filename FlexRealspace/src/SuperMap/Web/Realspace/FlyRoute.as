package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 路线对象类。
	 * （不可以初始化，对外开放）
	 * 该类用于对飞行路线进行设置。
	 * 该类不能被创建，只能通过路线集合来获取 FlyRoutes.get_currentRoute()。
	 */
	public class FlyRoute extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FlyRoute";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyRoute";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function FlyRoute(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 获取是否锁定高程。
		 * @return 返回当前是否锁定的高程
		 */
		public function get_isAltitudeFixed(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isAltitudeFixed",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置是否锁定高程。
		 * @param value 需要设置是否锁定高程
		 */
		public function set_isAltitudeFixed(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isAltitudeFixed",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取是否沿线飞行,当指定了沿线飞行时必须锁定路线的方位角即 FlyRoute.set_isHeadingFixed(true)。 
		 *  @return 返回是否沿线飞行
		 */
		public function get_isFlyAlongTheRoute(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isFlyAlongTheRoute",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置是否沿线飞行,当指定了沿线飞行时必须锁定路线的方位角即 FlyRoute.set_isHeadingFixed(true)。 
		 * @param value 需要设置是否沿线飞行
		 */
		public function set_isFlyAlongTheRoute(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isFlyAlongTheRoute",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取是否循环飞行。
		 * @return 返回是否循环飞行
		 */
		public function get_isFlyingLoop(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isFlyingLoop",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置是否循环飞行。 
		 * @param value 需要设置是否循环飞行
		 */
		public function set_isFlyingLoop(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isFlyingLoop",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取是否锁定方位角。
		 * @return 返回是否锁定方位角
		 */
		public function get_isHeadingFixed(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isHeadingFixed",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置是否锁定方位角。 
		 * @param value 需要设置是否锁定方位角
		 */
		public function set_isHeadingFixed(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isHeadingFixed",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取线路是否可见。
		 * @return 返回线路是否可见
		 */
		public function get_isLinesVisible(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isLinesVisible",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置线路是否可见。 
		 * @param value 需要设置线路是否可见
		 */
		public function set_isLinesVisible(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isLinesVisible",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取站点是否可见。
		 * @return 返回站点是否可见 
		 */
		public function get_isStopsVisible(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isStopsVisible",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置站点是否可见。
		 * @param value 需要设置站点是否可见
		 */
		public function set_isStopsVisible(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isStopsVisible",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取是否锁定俯仰角。 
		 * @return 返回是否锁定俯仰角
		 */
		public function get_isTiltFixed(): Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isTiltFixed",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Boolean;
		}
		/**
		 * 设置是否锁定俯仰角。 
		 * @param value 需要设置是否锁定俯仰角 
		 */
		public function set_isTiltFixed(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isTiltFixed",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取路线的名称。 
		 * @return 返回路线的名称
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
		 * 设置路线的名称。 
		 * @param value 需要设置的路线名称 
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
		 * 获取飞行路径的站点集合
		 * @return 返回飞行路径的站点集合
		 */
		public function get_routeStops():RouteStops
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_routeStops",
					isReturn:true
			};
			return this.flexToJsCall(array) as RouteStops;
		}
		
		/**
		 * 获取该飞行路线的速度，若用户没有为某个站点设置飞行速度，则此站点的飞行速度为此速度。速度单位为：米/秒
		 * @return 返回该飞行路线的速度
		 */
		public function get_speed():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_speed",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置该飞行路线的速度，若用户没有为某个站点设置飞行速度，则此站点的飞行速度为此速度。速度单位为：米/秒 
		 * @param value 需要设置的该飞行路线的速度
		 */
		public function set_speed(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_speed",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}