package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地理坐标系下三维点对象类
	 * （可以初始化，对外开放）
	 * 该对象用于表示坐标值精度为 Double 的三维点对象，即其坐标值大致范围为 ±5.0×1E−324 到 ±1.7×1E308，有效位为15-16位，单位为经纬度。
	 * 三维点对象是三维几何对象的基础，如三维线对象实际就是一串 Point3D 的点串，而三维面对象则是一串起始点和结束点相同的点串，
	 * 因而在描绘三维几何对象的位置和形状上，三维点对象是一个很重要的角色。
	 */
	public class Point3D extends ClassBase
	{
		
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Point3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Point3D";
		
		/**
		 * 利用给定的经纬度和高度坐标构造点对象初始化 Point3D 类的新实例。
		 * @param x 经度坐标值
		 * @param y 纬度坐标值
		 * @param z 高度坐标值
		 * 
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //初始化一个Point3D对象
		 * var point3D:SuperMap.Web.Core.Point3D=new SuperMap.Web.Core.Point3D(116,34,10000);
		 * //获取它的经纬度以及高程值
		 * var x:Number=point3D.get_x();
		 * var y:Number=point3D.get_y();
		 * var z:Number=point3D.get_z();
		 * //重新设置它的经纬度和高程值
		 * point3D.set_x(12);
		 * point3D.set_y(12);
		 * point3D.set_z(100);
		 * //再次获取它的经纬度高程值
		 * x=point3D.get_x();
		 * y=point3D.get_y();
		 * z=point3D.get_z();
		 * </listing>
		 */
		public function Point3D(x:Object=0,y:Number=0,z:Number=0)
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
					z.toString()+"$Number"
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
		 * @param point 被拷贝的地理坐标系下的点对象
		 */
		public function copy(point3D:Point3D):void
		{
			var realArgument:Array=[
				point3D.KEY.toString()+"$Object"
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
		 * 判断指定的点对象（Object 类）是否与当前 Point3D 对象具有相同坐标值
		 * @param object 将与此 Point 对象进行比较的点对象，可能不一定是Point3D的对象
		 * @return 如果两个点对象具有相同坐标值，返回 True；否则返回 False。当参数 point3D 为空时，也返回 False
		 */
		public function equals(object:Point3D):Boolean
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
		public function fromJson(jsonObject:Object):Point3D
		{
			return null;
		}
		/**
		 * 判断点对象中 x、y 、z参数是否为空
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
		/**
		 * 获取三维点对象的经度坐标值
		 * @return 返回三维点对象的经度坐标值
		 */
		public function get_x():Number
		{
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"get_x",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维点对象的经度坐标值
		 * @param value 需要设置的三维点对象的经度坐标值
		 */
		public function set_x(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_x",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维点对象的纬度坐标值
		 * @return 返回三维点对象的纬度坐标值
		 */
		public function get_y():Number
		{
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"get_y",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维点对象的纬度坐标值
		 * @param value 需要设置的三维点对象的纬度坐标值
		 */
		public function set_y(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_y",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维点对象的高度坐标值
		 * @return 返回三维点对象的高度坐标值
		 */
		public function get_z():Number
		{
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"get_z",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维点对象的高度坐标值
		 * @param value 需要设置的三维点对象的高度坐标值
		 */
		public function set_z(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_z",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}