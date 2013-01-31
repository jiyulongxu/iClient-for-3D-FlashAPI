package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地理坐标系下点对象类
	 * （可以初始化，对外开放）
	 * 该对象用于表示二维点对象，其坐标值的范围为 ±5.0*1e-324 到 ±1.7*1e308，有效位为15-16位，单位为经纬度。
	 * 点对象是各种几何对象的基础，如几何线对象实际就是一串点串，而几何面对象则是一串起始点和结束点相同的点串。
	 */
	public class Point2D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Point2D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Point2D";
		
		/**
		 * Point2D 构造函数，利用给定的 x、y 坐标构造点对象。
		 * @param x 经度坐标值
		 * @param y 纬度坐标值
		 * @param x2 
		 * @param y2
		 * 
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //初始化一个Point2D对象
		 * var point2D:SuperMap.Web.Core.Point2D=new SuperMap.Web.Core.Point2D(116,39,120,40);
		 * //判定是否为空，返回false
		 * var isEmpty:Boolean=point2D.isEmpty();
		 * //拷贝为自身的点
		 * point2D.copy(new SuperMap.Web.Core.Point2D(122,122,30,30));
		 * //判断是否相等，返回true
		 * var isEquals:Boolean=point2D.equals(new SuperMap.Web.Core.Point2D(122,122,30,30));
		 * </listing> 
		 */
		public function Point2D(x:Object=0,y:Number=0,x2:Number=0,y2:Number=0)
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
					y.toString()+"$Number",
					x2.toString()+"$Number",
					y2.toString()+"$Number"
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
		 * @param point2D：被拷贝的地理坐标系下的点对象。
		 */
		public function copy(point2D:Point2D):void
		{
			var realArgument:Array=[
				point2D.KEY.toString()+"$Object"
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
		 * 判断指定的点对象（Object 类）是否与当前 Point2D 对象具有相同坐标值
		 * @param object：将与此 Point2D 对象进行比较的点对象，可能不一定是Point2D的对象
		 * @return 如果两个点对象具有相同坐标值，返回 True；否则返回 False。当参数 point2D 为空时，也返回 False
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