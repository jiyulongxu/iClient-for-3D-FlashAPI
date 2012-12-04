package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 按键枚举类。
	 * 当用户通过鼠标或键盘完成交互操作时，通过获取按键类型从而触发不同事件。
	 */
	public class FlagType extends Enum
	{
		/**
		 * Alt键
		 */
		public static const ALT:Number=16;
		/**
		 * Ctrl键
		 */
		public static const CONTROL:Number=8;
		/**
		 * Delete 键
		 */
		public static const DELETE:Number=4096;
		/**
		 * Esc 键
		 */
		public static const ESC:Number=2048;
		/**
		 * 鼠标左或右键单击击中球体。
		 */
		public static const HITGLOBE:Number=1024;
		/**
		 * 鼠标左键
		 */
		public static const LBUTTON:Number=1;
		/**
		 * 鼠标中键
		 */
		public static const MBUTTON:Number=32;
		/**
		 * 无按键
		 */
		public static const NOKEY:Number=0;
		/**
		 * 鼠标右键
		 */
		public static const RBUTTON:Number=2;
		/**
		 * Shift键
		 */
		public static const SHIFT:Number=4;
		/**
		 * 鼠标滚轮
		 */
		public static const WHEEL:Number=64;
		public function FlagType()
		{
			super();
		}
	}
}