package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 颜色类
	 * （可以初始化，对外开放）
	 * 该类主要是提供为空间对象设置、专题图等设置颜色。
	 */
	public class Color extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Color";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Color";
		
		/**
		 * 使用R、G、B和 初始化 Color 类的新实例。
		 * @param red R 值，取值范围0-255。默认值为0。（Number类型）
		 * @param green G 值，取值范围0-255。默认值为0。
		 * @param blue B 值，取值范围0-255。默认值为0。
		 * @param alpha 透明度，取值范围0-255。默认值为255，即不透明。
		 * 
		 * @example 以下例子示范了如何创建一个颜色对象
		 * <listing>
		 * //初始化一个颜色对象
		 * var color:SuperMap.Web.Core.Color=new SuperMap.Web.Core.Color(250, 35, 30, 240);
		 * //获取它的透明度
		 * var a:Number= color.get_alpha();
		 * //获取它的R值
		 * var r:Number=color.get_red();
		 * //获取它的G值
		 * var g:Number=color.get_green();
		 * //获取它的B值
		 * var b:Number=color.get_blue();
		 * //获取ABGR顺序排列的32位整型颜色值
		 * var longABGR:Number=color.toLongABGR();
		 * //获取十六进制颜色值
		 * var rgb:String=color.toRGB();
		 * </listing>
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
		 * @param color：被复制的颜色对象。
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
		 * @param longABGR：要转化的以 ABGR 顺序排列的32位整型颜色值。
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
		 * @param rgb：要转化十六进制颜色值。
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
		 * @return 返回以 ABGR 顺序排列的32位整型颜色值。
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
		 * @return 返回十六进制颜色值。
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
		 * @return 返回透明度
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
		 * @param value 需要设置的透明度
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
		 * @return 返回B值
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
		 * @param value 需要设置的B值
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
		 * @return 返回G值
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
		 * @param value 需要设置的G值
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
		 * @return 返回R值 
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
		 * @param value 需要设置的R值
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