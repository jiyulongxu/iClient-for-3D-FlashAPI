package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 颜色类
	 * 该类主要是提供为空间对象设置、专题图等设置颜色。
	 */
	public class Color extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Color";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Color";
		
		/**
		 * 构造函数
		 * red：R 值，取值范围0-255。默认值为0。
		 * green：G 值，取值范围0-255。默认值为0。
		 * blue：B 值，取值范围0-255。默认值为0。
		 * alpha：透明度，取值范围0-255。默认值为255，即不透明。
		 */
		public function Color(red:Object=0,green:Number=0,blue:Number=0,alpha:Number=255)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(red is Number)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					red.toString()+"$Number",
					green.toString()+"$Number",
					blue.toString()+"$Number",
					alpha.toString()+"$Number"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=red["key"] as Number;
				isNew=red["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 复制指定的颜色对象到当前对象。
		 * color：被复制的颜色对象。
		 */
		public function copy(color:Color):void
		{
			var realArgument:Array=[color.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"copy",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将以 ABGR 顺序排列的32位整型颜色值转化成该 Color 类。
		 * 如将 0xFFFFFFFF 转换成该类为 Color（255，255，255，255）。 
		 * longABGR：要转化的以 ABGR 顺序排列的32位整型颜色值。
		 */
		public function fromLongABGR(longABGR:Number):void
		{
			var realArgument:Array=[longABGR.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"fromLongABGR",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将十六进制颜色值转化成该 Color 类。
		 * 如将 #FFFFFF 转换成该类为 Color(255,，255，255，255)。 
		 * rgb：要转化十六进制颜色值。
		 */
		public function fromRGB(rgb:String):void
		{
			var realArgument:Array=[rgb+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"fromRGB",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将当前 Color 类转换成以 ABGR 顺序排列的32位整型颜色值。
		 * 返回以 ABGR 顺序排列的32位整型颜色值。
		 */
		public function toLongABGR():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"toLongABGR",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 将当前 Color 类转换成十六进制颜色值。 
		 * 返回十六进制颜色值。
		 */
		public function toRGB():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"toRGB",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 获取透明度，取值范围0-255。默认值为255，即不透明。
		 */
		public function get_alpha():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_alpha",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置透明度，取值范围0-255。默认值为255，即不透明。
		 */
		public function set_alpha(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_alpha",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取 B 值，取值范围0-255。默认值为0。
		 */
		public function get_blue():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_blue",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置 B 值，取值范围0-255。默认值为0。
		 */
		public function set_blue(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_blue",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取  G 值，取值范围0-255。默认值为0。 
		 */
		public function get_green():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_green",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置 G 值，取值范围0-255。默认值为0。 
		 */
		public function set_green(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_green",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取  R 值，取值范围0-255。默认值为0。 
		 */
		public function get_red():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_red",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置 R 值，取值范围0-255。默认值为0。 
		 */
		public function set_red(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_red",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}