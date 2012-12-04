package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 二、三维几何对象抽象类
	 * 二、三维几何对象基类不仅用于描述二维几何对象的空间信息（如坐标点对、几何线对象等），也可以描述三维几何对象的信息。
	 * 在三维系统中，可以使用二维几何对象进行空间分析、空间关系运算、缓冲区分析等，然后将结果在三维系统中显示实现二三维一体化。
	 * 其子类包括：GeoPoint，GeoLine，GeoRegion，Geometry3D。
	 */
	public class Geometry extends ClassBase
	{
		public function Geometry(key:Number=0, isNew:Boolean=true, array:Object=null)
		{
			super(key, isNew, array);
		}
		/**
		 * 暂不开放
		 */
		public function clone():Geometry
		{
			return null;
		}
	}
}