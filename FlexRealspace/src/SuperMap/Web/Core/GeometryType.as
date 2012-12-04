package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 几何对象类型枚举常量
	 */
	public class GeometryType extends Enum
	{
		/**
		 * 
		 */
		public static const GEOBOX:Number=1205;
		/**
		 * 
		 */
		public static const GEOCIRCLE3D:Number=1210;
		/**
		 * 复合类型
		 */
		public static const GEOCOMPOUND:Number=1000;
		/**
		 * 
		 */
		public static const GEOCONE:Number=1207;
		/**
		 * 
		 */
		public static const GEOCYLINDER:Number=1206;
		/**
		 * 
		 */
		public static const GEOELLIPSOID:Number=1212;
		/**
		 * 
		 */
		public static const GEOHEMISPHERE:Number=1204;
		/**
		 * 三维线几何对象类型
		 */
		public static const GEOLINE3D:Number=103;
		/**
		 * 三维模型对象类型
		 */
		public static const GEOMODEL:Number=1201;
		/**
		 * 空类型
		 */
		public static const GEONULL:Number=13;
		/**
		 * 粒子几何对象类型
		 */
		public static const GEOPARTICLE:Number=1213;
		/**
		 * 可依附地形的三维图片对象类型
		 */
		public static const GEOPICTURE3D:Number=1202;
		/**
		 * 
		 */
		public static const GEOPIE3D:Number=1209;
		/**
		 * 
		 */
		public static const GEOPIECYLINDER:Number=1211;
		/**
		 * 三维地标类型
		 */
		public static const GEOPLACEMARK:Number=108;
		/**
		 * 三维点几何对象类型
		 */
		public static const GEOPOINT3D:Number=101;
		/**
		 * 
		 */
		public static const GEOPYRAMID:Number=1208;
		/**
		 * 三维面几何对象类型
		 */
		public static const GEOREGION3D:Number=105;
		/**
		 * 
		 */
		public static const GEOSPHERE:Number=1203;
		/**
		 * 三维文本几何对象类型
		 */
		public static const GEOTEXT3D:Number=107;
		public function GeometryType()
		{
			super();
		}
	}
}