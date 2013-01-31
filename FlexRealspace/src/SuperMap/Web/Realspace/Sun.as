package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 太阳对象类
	 * （不可以初始化，对外开放）
	 */
	public class Sun extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Sun";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Sun";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Sun(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 获取计算太阳位置时所用的地方时与 UTC 的偏移量。 
		 * @return 返回计算太阳位置时所用的地方时与 UTC 的偏移量
		 */
		public function get_baseUtcOffset():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_baseUtcOffset",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置计算太阳位置时所用的地方时与 UTC 的偏移量。
		 * @param value 设置计算太阳位置时所用的地方时与 UTC 的偏移量
		 */
		public function set_baseUtcOffset(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_baseUtcOffset",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取计算太阳位置时所用的时间。
		 * @return 返回计算太阳位置时所用的时间
		 */
		public function get_dateTime():Date
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_dateTime",
					isReturn:true
			};
			return this.flexToJsCall(array) as Date;
		}
		
		/**
		 * 设置计算太阳位置时所用的时间。 
		 * @param value 需要设置的计算太阳位置时所用的时间
		 */
		public function set_dateTime(value:Date):void
		{
			var realArgument:Array=[
				value.time.toString()+"$Date"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_dateTime",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取太阳是否可见。 
		 * @return 返回太阳是否可见
		 */
		public function get_isVisible():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isVisible",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置太阳是否可见。
		 * @param value 设置太阳是否可见
		 */
		public function set_isVisible(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isVisible",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}