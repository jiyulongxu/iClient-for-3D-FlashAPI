package SuperMap.Web.Core
{
	/**
	 * 三维面几何对象类
	 * （可以初始化，对外开放）
	 * 三维面几何对象由一个或多个部分组成，每个部分称为三维面几何对象的一个子对象，
	 * 每个子对象用一个有序三维坐标点集合 Point3Ds 来表示，其起始点和终止点重合。
	 * 对子对象可以进行添加，删除，修改等操作。
	 */
	public class GeoRegion3D extends Geometry3D
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GeoRegion3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.GeoRegion3D";
		/**
		 * 构造函数
		 * @param point3Ds 三维地理坐标点对数组。（三维点集合）
		 */
		public function GeoRegion3D(point3Ds:Object=null)
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
	}
}