package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 像素坐标系下的点对象类
	 * （可以初始化，对外开放）
	 */
	public class Point extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Point";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Point";
		
		/**
		 * Point 构造函数，利用给定的 x、y 坐标构造屏幕点对象
		 * @param x 像素坐标系下 x 坐标值
		 * @param y 像素坐标系下 y 坐标值
		 * 
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //初始化三个point对象
		 * var point1:SuperMap.Web.Core.Point=new SuperMap.Web.Core.Point(50,200);
		 * var point2:SuperMap.Web.Core.Point=new SuperMap.Web.Core.Point(100,200);
		 * var point3:SuperMap.Web.Core.Point=new SuperMap.Web.Core.Point(50,200);
		 * //判断point1对象是否为空，返回false，非空
		 * var isEmpty:Boolean=point1.isEmpty();
		 * //判断point1和point2是否相等，返回false
		 * var isEquals1:Boolean=point1.equals(point2);
		 * //判断point1和point3是否相等，返回true
		 * var isEquals2:Boolean=point1.equals(point3);
		 * </listing>
		 */
		public function Point(x:Object=0,y:Number=0)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(x is Number)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					x.toString()+"$Number",
					y.toString()+"$Number"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=x["key"] as Number;
				isNew=x["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 将传入的点对象拷贝为自身点对象
		 * @param point 被拷贝的像素坐标系下的点对象
		 */
		public function copy(point:Point):void
		{
			var realArgument:Array=[
				point.KEY.toString()+"$Object"
			];
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
		 * 判断指定的点对象（Object 类）是否与当前 Point 对象具有相同坐标值
		 * @param object 将与此 Point 对象进行比较的点对象，可能不一定是Point的对象
		 * @return 如果两个点对象具有相同坐标值，返回 True；否则返回 False。当参数 point 为空时，也返回 False。
		 */
		public function equals(object:Object):Boolean
		{
			var realArgument:Array=[
				object.KEY.toString()+"$Object"
			];
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
		 * 暂不开放
		 */
		public function fromJson(jsonObject:Object):Point2D
		{
			return null;
		}
		/**
		 * 判断点对象中 x、y 参数是否为空
		 * @return 如果点对象中任意参数为空则返回 True，否则返回 False
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
	}
}