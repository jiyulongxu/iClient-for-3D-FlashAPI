package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 屏幕坐标单位常量
	 * 在使用屏幕图层时，通过坐标类型可以控制屏幕图层上的对象的位置是否随屏幕缩放而变化。
	 * 例如，在三维系统中的屏幕图层上加一个 LOGO，设置其为百分比单位，即在屏幕图层缩放时会随之缩放。
	 */
	public class ScreenCoordinateUnit extends Enum
	{
		/**
		 * 像素单位。当屏幕图层的某个坐标轴为该坐标单位时，对象是固定大小或存储位置是固定的。
		 */
		public static const PIXEL:Number=1;
		/**
		 * 百分比单位，取值范围为[0.0，1.0]。当屏幕图层的某个坐标轴为该坐标单位时，对象存储的位置是相对的，会随着屏幕图层的缩放而变化。
		 */
		public static const ABSOLUTE:Number=0;
		public function ScreenCoordinateUnit()
		{
			super();
		}
	}
}