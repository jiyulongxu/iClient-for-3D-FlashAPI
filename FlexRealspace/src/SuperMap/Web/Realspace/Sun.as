package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 太阳对象类
	 */
	public class Sun extends ClassBase
	{
		public var CLASSNAME:String="Sun";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Sun";
		public function Sun(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 获取计算太阳位置时所用的地方时与 UTC 的偏移量。 
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