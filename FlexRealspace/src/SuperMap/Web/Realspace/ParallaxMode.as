package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 立体显示视差模式类型枚举。
	 */
	public class ParallaxMode extends Enum
	{
		/**
		 * 负视差的立体视差模式，在该模式下实现了显示物体向屏幕外凸显的效果。
		 */
		public static const NegativeParallax:Number=0;
		/**
		 * 正视差的立体视差模式，在该模式下实现了显示物体向屏幕里纵深的效果。
		 */
		public static const PositiveParallax:Number=1;
		public function ParallaxMode()
		{
			super();
		}
	}
}