package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 立体显示模式枚举。
	 * （模拟枚举，不可以初始化，对外开放）
	 */
	public class StereoMode extends Enum
	{
		/**
		 * 互补色的立体呈现方式。
		 */
		public static const Anaglyphic:Number=0;
		/**
		 * 水平跨越立体呈现方式：此种方式专为PC机使用偏振式投影仪观看立体提供支持。
		 */
		public static const HorizontalSplit:Number=2;
		/**
		 * 主动式（四立方缓存式）立体呈现方式。
		 */
		public static const QuadBuffer:Number=1;
		/**
		 * 垂直跨越立体呈现方式。
		 */
		public static const VerticalSplit:Number=3;
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function StereoMode()
		{
			super();
		}
	}
}