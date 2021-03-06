package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 事件信息类。
	 * （不可以初始化，对外开放）
	 * 该类主要用于获取 UI 交互操作时触发的事件，如当前鼠标在屏幕中的位置信息、鼠标或键盘的按键信息等。
	 */
	public class EventObject extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="EventObject";
		/**
		 * 在js端对应的类的全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.EventObject";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function EventObject(object:Object=null)
		{
			//此类不允许主动创建，所以不需要向js端发送消息
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取当前鼠标指针所在经纬点的地面高程坐标，单位为米。若鼠标指针在球外或者没有加载地形数据，则该值为0。
		 * @return 返回当前鼠标指针所在经纬点的地面高程坐标
		 */
		public function get_altitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_altitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取当前相机对象。
		 * @return 返回当前相机对象
		 */
		public function get_camera():Camera
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_camera",
					isReturn:true
			};
			return this.flexToJsCall(array) as Camera;
		}
		/**
		 * 获取当前鼠标指针在场景中的 X 坐标，单位为像素值。 
		 * @return 返回当前鼠标指针在场景中的 X 坐标
		 */
		public function get_clientX():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_clientX",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取当前鼠标指针在场景中的 Y 坐标，单位为像素值。 
		 * @return 返回当前鼠标指针在场景中的 Y 坐标
		 */
		public function get_clientY():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_clientY",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取触发的鼠标或键盘键，FlagType 枚举对象。
		 * @return 返回 触发的鼠标或键盘键
		 */
		public function get_flagType():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_flagType",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取当前鼠标指针所在的全球纬度坐标。若鼠标指针在球外，则纬度为0。 
		 * @return 返回 当前鼠标指针所在的全球纬度坐标
		 */
		public function get_latitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_latitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取当前鼠标指针所在的全球经度坐标。若鼠标指针在球外，则经度为0。 
		 * @return 返回当前鼠标指针所在的全球经度坐标
		 */
		public function get_longitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_longitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取鼠标滚轮滚动的距离。 
		 * @return 返回鼠标滚轮滚动的距离
		 */
		public function get_zDelta():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_zDelta",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
	}
}