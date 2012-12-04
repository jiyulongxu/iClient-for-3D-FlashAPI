package SuperMap.Web.Core
{
	/**
	 * 三维几何对象抽象类
	 * 它是所有三维几何类的基类，提供了基本的三维几何类的属性和方法。
	 * 通过本类可以对三维几何对象的姿态进行控制，包括对象的位置，旋转角度，缩放比例和内点；
	 * 还可以对三维几何对象进行偏移以及获取三维模型几何对象。
	 */
	public class Geometry3D extends Geometry
	{
		public function Geometry3D(key:Number=0, isNew:Boolean=true, array:Object=null)
		{
			super(key, isNew, array);
		}
	}
}