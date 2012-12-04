package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 飞行模式枚举类。
	 * 该类用于设置飞行至指定地点的方式。
	 */
	public class FlyingMode extends Enum
	{
		/**
		 * 常规飞行
		 */
		public static const CAMERA_NORMAL:Number=6;
		/**
		 * 直接飞到指定地点
		 */
		public static const CAMERASTATE_DIRECT:Number=7;
		/**
		 * 眼睛绕指定线飞行
		 */
		public static const EYEPLAY:Number=8;
		/**
		 * 缩放大小飞行
		 */
		public static const FLYDISTANCE:Number=10;
		/**
		 * Heading 飞行
		 */
		public static const FLYHEADING:Number=12;
		/**
		 * Tilt 飞行
		 */
		public static const FLYTILT:Number=11;
		/**
		 * 镜头直接切换至指定地点
		 */
		public static const JUMP:Number=1;
		/**
		 * 限速飞行
		 */
		public static const LIMITSPEED:Number=9;
		/**
		 * 沿多点直接飞行
		 */
		public static const MULTIPOINTFLY_DIRECT:Number=5;
		/**
		 * 沿多点常规飞行
		 */
		public static const MULTIPOINTFLY_NORMAL:Number=4;
		/**
		 * 沿指定线飞行
		 */
		public static const PLAY:Number=3;
		/**
		 * 镜头围绕指定地点旋转
		 */
		public static const ROTATE:Number=2;
		public function FlyingMode()
		{
			super();
		}
	}
}