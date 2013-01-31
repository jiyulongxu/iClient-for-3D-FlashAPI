package SuperMap.Web.Core
{
	/**
	 * 三维几何线对象
	 * （可以初始化，对外开放）
	 * 三维几何线对象是由三维点串构成的线对象，这些点可以不在同一平面上。线对象由一个或多个部分组成，每个部分称为线对象的一个子对象。
	 * 每个子对象由一个 Point3D 数组来表示。通过该类可以对子对象进行添加、删除和修改等操作。
	 */
	public class GeoLine3D extends Geometry3D
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GeoLine3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.GeoLine3D";
		/**
		 * 构造函数
		 * point3Ds：三维地理坐标点对数组。
		 */
		/**
		 * 使用R、G、B和 初始化 Color 类的新实例。
		 * @param point3Ds：三维地理坐标点对数组。（point3D的数组）
		 * @example 
		 * <listing>
		 * 
		 * </listing>
		 */
		public function GeoLine3D(point3Ds:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(point3Ds is Point3Ds)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					point3Ds.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=point3Ds["key"] as Number;
				isNew=point3Ds["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 获取三维几何线对象中指定索引号的子对象的三维点对象数组。 
		 * @param nIndex 子对象的索引（大于等于零）。 
		 * @return 如果成功，返回 Point3Ds 对象；如果失败，则返回空值。
		 */
		public function getPart(nIndex:Number):Point3Ds
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getPart",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Point3Ds;
		}
	}
}