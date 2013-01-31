package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 三维要素 Feature3D 的填充模式常量
	 * （模拟枚举，不可以初始化，对外开放）
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
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Fill3DMode()
		{
			super();
		}
	}
}