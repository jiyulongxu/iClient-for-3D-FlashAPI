package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.Util.Enum;

	/**
	 * 三维操作状态常量类。
	 * 该类包含了三维地图的操作状态常量。作为 SceneAction 的 type 属性，在扩展 SceneAction 时，
	 * 扩展类中可以使用一个或组合多个 SceneActionType 中提供的操作，从而在一个类中完成一系列操作。
	 */
	public class SceneActionType extends Enum
	{
		/**
		 * 量算面积
		 */
		public static const MEASUREAREA:Number=32;
		/**
		 * 量算距离
		 */
		public static const MEASUREDISTANCE:Number=31;
		/**
		 * 量算高度
		 */
		public static const MEASUREHEIGHT:Number=33;
		/**
		 * 依地形量算距离
		 */
		public static const MEASURETERRAINDISTANCE:Number=37;
		/**
		 * 空操作
		 */
		public static const NULL:Number=0;
		/**
		 * 漫游操作。漫游操作包括平移、缩放、倾斜和旋转操作。
		 */
		public static const PAN:Number=1;
		/**
		 * 平移选择，即当你单击选择了一个地物的同时还能平移
		 */
		public static const PANSELECT:Number=105;
		/**
		 * 点选
		 */
		public static const POINTSELECT:Number=10;
		/**
		 * 自由缩放。按住右键向上拖动放大，向下拖动缩小。
		 */
		public static const ZOOMFREE:Number=4;
		/**
		 * 放大操作
		 */
		public static const ZOOMIN:Number=2;
		/**
		 * 缩小操作
		 */
		public static const ZOOMOUT:Number=3;
		public function SceneActionType()
		{
			super();
		}
	}
}