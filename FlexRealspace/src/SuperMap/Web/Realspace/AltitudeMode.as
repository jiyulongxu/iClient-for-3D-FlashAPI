package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 高度模式常量。
	 * 枚举类，用来设置相机或三维数据的海拔高度值。
	 */
	public class AltitudeMode extends Enum
	{
		/**
		 * 绝对高度模式
		 */
		public static const ABSOLUTE:Number=2;
		/**
		 * 地表层高度模式
		 */
		public static const CLAMP_TO_GROUND:Number=0;
		/**
		 * 距地相对高度模式
		 */
		public static const RELATIVE_TO_GROUND:Number=1;
		/**
		 * 相对于地下
		 */
		public static const RELATIVE_TO_UNDERGROUND:Number=3;
		public function AltitudeMode()
		{
			super();
		}
	}
}