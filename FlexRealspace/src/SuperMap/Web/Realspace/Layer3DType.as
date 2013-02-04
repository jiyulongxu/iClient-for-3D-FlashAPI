package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 三维图层类型枚举类
	 * （模拟枚举，不可以初始化，对外开放）
	 * 当创建 Layer3D 图层时需要设置所创建图层的类型。
	 */
	public class Layer3DType extends Enum
	{
		/**
		 * 影像图层
		 */
		public static const IMAGE:Number=1;
		/**
		 * KML 图层
		 */
		public static const KML:Number=2;
		/**
		 * KMZ 图层
		 */
		public static const KMZ:Number=102;
		/**
		 * 模型图层
		 */
		public static const MODEL:Number=7;
		/**
		 * 空图层
		 */
		public static const NONE:Number=0;
		/**
		 * 地形图层
		 */
		public static const TERRAIN:Number=8;
		/**
		 * 矢量图层
		 */
		public static const VECTOR:Number=10;
		/**
		 * WMS 图层
		 */
		public static const WMS:Number=11;
		/**
		 * WMTS 图层
		 */
		public static const WMTS:Number=12;
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Layer3DType()
		{
			super();
		}
	}
}