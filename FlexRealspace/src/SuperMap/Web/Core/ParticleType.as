package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 粒子类型枚举。
	 */
	public class ParticleType extends Enum
	{
		/**
		 * 爆炸效果
		 */
		public static const Explode:Number=5;
		/**
		 * 火焰效果
		 */
		public static const Fire:Number=1;
		/**
		 * 烟火效果
		 */
		public static const FireSmoke:Number=3;
		/**
		 * 喷泉效果
		 */
		public static const Fountain:Number=4;
		/**
		 * 降雨效果
		 */
		public static const Rain:Number=6;
		/**
		 * 烟雾效果
		 */
		public static const Smoke:Number=2;
		/**
		 * 降雪效果
		 */
		public static const Snow:Number=7;
		/**
		 * 尾焰效果
		 */
		public static const Tailflame:Number=8;
		public function ParticleType()
		{
			super();
		}
	}
}