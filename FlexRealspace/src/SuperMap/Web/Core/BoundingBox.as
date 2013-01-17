package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 包围盒类
	 * 该类用于描述三维要素的最小外接立方体，即三维要素的空间地理范围。
	 */
	public class BoundingBox extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="BoundingBox";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.BoundingBox";
		/**
		 * 构造函数
		 * lower：包围盒的最小点，即 x、y、z 坐标都为最小值的点。
		 * upper：包围盒的最大点，即 x、y、z 坐标都为最大值的点。 
		 */
		public function BoundingBox(lower:Object=null,upper:Vector3D=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(lower is Vector3D)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					lower.KEY.toString()+"$Object",
					upper.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=lower["key"] as Number;
				isNew=lower["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 复制指定的包围盒对象到当前对象。
		 * boundingBox：被复制的包围盒对象。
		 * clone 与 copy 的区别：clone 要创建一个新的与原对象一样的对象；
		 * 而 copy 则是将原对象中的值复制到现在的对象中，不需要重新创建一个对象。
		 */
		public function copy(boundingBox:BoundingBox):void
		{
			var realArgument:Array=[boundingBox.KEY.toString()+"$Object"];
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
		 * 释放资源。
		 */
		public function dispose():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"dispose",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 判断当前包围盒类对象与指定的包围盒对象的最小三维点和最大三维点坐标是否相等。
		 * object： 指定的包围盒对象。
		 * 如果指定的包围盒对象与当前包围盒对象最小三维点和最大三维点坐标相等，则返回 true，否则返回 false。
		 */
		public function equals(boundingBox:BoundingBox):Boolean
		{
			var realArgument:Array=[boundingBox.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"equals",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 判断包围盒是否为空。
		 * 如果包围盒对象为空，返回 true，否则返回 false。
		 */
		public function isEmpty():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"isEmpty",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 获取包围盒的中心点。
		 */
		public function get_center():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_center",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 获取包围盒的最小三维点，即 x,y,z 坐标值最小的三维点对象。
		 */
		public function get_lower():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_lower",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 设置包围盒的最小三维点，即 x,y,z 坐标值最小的三维点对象。
		 */
		public function set_lower(value:Vector3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_lower",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取包围盒的最大三维点，即 x,y,z 坐标值最大的三维点对象。
		 */
		public function get_upper():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_upper",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 设置包围盒的最大三维点，即 x,y,z 坐标值最大的三维点对象。
		 */
		public function set_upper(value:Vector3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_upper",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}