package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 场景模式。
	 */
	public class SceneType extends Enum
	{
		/**
		 * 平面场景。
		 */
		public static const Flat:Number=1;
		/**
		 * 球面场景。
		 */
		public static const Globe:Number=0;
		public function SceneType()
		{
			super();
		}
	}
}