package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 三维图层数据类型枚举。
	 * （模拟枚举，不可以初始化，对外开放）
	 * 该类用于获得三维图层中每一个图层的具体数据类型。
	 */
	public class Layer3DDataType extends Enum
	{
		/**
		 * CAD 数据类型
		 */
		public static const CADDATA:Number=149;
		/**
		 * DEM 数据类型
		 */
		public static const DEMDATA:Number=84;
		/**
		 * 栅格数据类型
		 */
		public static const GRIDDATA:Number=83;
		/**
		 * 影像数据类型
		 */
		public static const IMAGEDATA:Number=81;
		/**
		 * KML 数据类型
		 */
		public static const KMLDATA:Number=108;
		/**
		 * 线数据类型
		 */
		public static const LINEDATA:Number=3;
		/**
		 * 三维线数据类型
		 */
		public static const LINEZDATA:Number=102;
		/**
		 * 模型数据类型
		 */
		public static const MODELDATA:Number=106;
		/**
		 * OVERLAY 影像数据类型
		 */
		public static const OVERLAYDATA:Number=107;
		/**
		 * 点数据类型
		 */
		public static const POINTDATA:Number=1;
		/**
		 * 三维点数据类型
		 */
		public static const POINTZDATA:Number=101;
		/**
		 * 多边形数据类型
		 */
		public static const REGIONDATA:Number=5;
		/**
		 * 三维面数据类型
		 */
		public static const REGIONZDATA:Number=105;
		/**
		 * 文本数据类型
		 */
		public static const TEXTDATA:Number=7;
		/**
		 * TIN 数据类型
		 */
		public static const TINDATA:Number=139;
		/**
		 * 未知或者无效数据类型
		 */
		public static const UNKNOWNDATA:Number=-1;
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Layer3DDataType()
		{
			super();
		}
	}
}