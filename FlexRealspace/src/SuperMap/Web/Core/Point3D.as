package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地理坐标系下三维点对象类
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
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Point3D";
		
		/**
		 * 构造函数
		 * x：经度坐标值
		 * y：纬度坐标值
		 * z：高度坐标值
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
		 * point：被拷贝的地理坐标系下的点对象
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
		 * object：将与此 Point 对象进行比较的点对象，可能不一定是Point3D的对象
		 * 如果两个点对象具有相同坐标值，返回 True；否则返回 False。当参数 point3D 为空时，也返回 False
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
		 * 如果点对象中任意参数为空则返回 True，否则返回 False
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