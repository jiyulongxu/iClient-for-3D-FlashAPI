package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 场景模式。
	 * （模拟枚举，不可以初始化，对外开放）
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
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function SceneType()
		{
			super();
		}
	}
}