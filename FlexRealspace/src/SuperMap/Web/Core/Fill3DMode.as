package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 三维要素 Feature3D 的填充模式常量
	 * 该类提供了三种三维体对象的填充模式，分别为轮廓填充，区域填充，轮廓和区域填充。
	 */
	public class Fill3DMode extends Enum
	{
		/**
		 * 区域填充模式
		 */
		public static const FACE:Number=1;
		/**
		 * 轮廓填充模式
		 */
		public static const LINE:Number=2;
		/**
		 * 轮廓和区域填充
		 */
		public static const FACEANDLINE:Number=3;
		
		public function Fill3DMode()
		{
			super();
		}
	}
}