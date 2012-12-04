package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地理坐标系下矩形对象类
	 * 该类通常用于确定一个矩形区域，可用来表示几何对象的最小外接矩形、地图窗口的可视范围、数据集的地理范围等,单位为经纬度
	 */
	public class Rectangle2D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Rectangle2D";
		//在js端对应的类的全名
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Rectangle2D";
		/**
		 * 
		 */
		public function Rectangle2D(left:Object=0,bottom:Number=0,right:Number=0,top:Number=0)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(left is Number)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					left.toString()+"$Number",
					bottom.toString()+"$Number",
					right.toString()+"$Number",
					top.toString()+"$Number"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=left["key"] as Number;
				isNew=left["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 计算矩形对象的中心点
		 */
		public function center():Point2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"center",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point2D;
		}
		/**
		 * 克隆一个矩形对象
		 */
		public function clone():Rectangle2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"clone",
					isReturn:true
			};
			return this.flexToJsCall(array) as Rectangle2D;
		}
		/**
		 * 判断该矩形对象是否包含某个坐标点
		 * x：坐标点 X 坐标
		 * y：坐标点 Y 坐标
		 */
		public function contains(x:Number,y:Number):Boolean
		{
			var realArgument:Array=[
				x.toString()+"$Number",
				y.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"contains",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 将传入的矩形对象拷贝为自身矩形对象
		 * rectangle2D：被拷贝的地理坐标系下的矩形对象。该对象坐标值不能为空。
		 */
		public function copy(rectangle2D:Rectangle2D):void
		{
			var realArgument:Array=[
				rectangle2D.KEY.toString()+"$Object"
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
		 * 判断指定的 Rectangle2D 类型矩形对象是否与当前矩形对象具有相同坐标值
		 * rectangle2D：与当前矩形对象进行比较的 Rectangle2D 类型矩形对象
		 * 1.当两个矩形对象具有相同坐标值，返回 true；否则返回 false。
		 * 2.当参数为空时，返回 false。
		 */
		public function equals(rectangle2D:Rectangle2D):Boolean
		{
			var realArgument:Array=[
				rectangle2D.KEY.toString()+"$Object"
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
		public function fromJson(jsonObject:Object):Rectangle2D
		{
			return null;
		}
		/**
		 * 计算矩形对象的高度
		 * 返回矩形对象的高度
		 * 组成 Rectangle2D 对象的上、下边界值都不能为空，否则抛出异常
		 */
		public function height():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"height",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		public function intersect(rectangle2D:Rectangle2D):Rectangle2D
		{
			var realArgument:Array=[
				rectangle2D.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"equals",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Rectangle2D;
		}
		/**
		 * 判断 Rectangle2D 对象是否为空
		 * 如果该对象为空则返回 True，否则返回 False。
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
		 * 将该矩形对象与指定矩形求并集，并将原矩形替换为包含自身与指定矩形的并集的最小矩形。
		 * rectangle2D：用于求并集的矩形。 
		 */
		public function union(rectangle2D:Rectangle2D):void
		{
			var realArgument:Array=[
				rectangle2D.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"union",
					isReturn:false,
				realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 计算矩形对象的宽度。
		 * 返回矩形对象的宽度。
		 * 组成 Rectangle2D 对象的左、右边界值都不能为空，否则抛出异常。
		 */
		public function width():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"width",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取地理坐标系下矩形对象的左下角点坐标值。该点对象坐标值 x、y 的默认值为 NaN。
		 */
		public function get_leftBottom():Point2D
		{
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"get_leftBottom",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point2D;
		}
		/**
		 * 设置地理坐标系下矩形对象的左下角点坐标值。该点对象坐标值 x、y 的默认值为 NaN。
		 */
		public function set_leftBottom(point2D:Point2D):void
		{
			var realArgument:Array=[
				point2D.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_leftBottom",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取地理坐标系下矩形对象的右上角点坐标值。该点对象坐标值 x、y 的默认值为 NaN。
		 */
		public function get_rightTop():Point2D
		{
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"get_rightTop",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point2D;
		}
		/**
		 * 设置地理坐标系下矩形对象的右上角点坐标值。该点对象坐标值 x、y 的默认值为 NaN。
		 */
		public function set_rightTop(point2D:Point2D):void
		{
			var realArgument:Array=[
				point2D.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_rightTop",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}