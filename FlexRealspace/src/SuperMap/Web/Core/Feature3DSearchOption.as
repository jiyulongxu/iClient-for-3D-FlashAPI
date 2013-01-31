package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 查询要素方式枚举常量
	 * （模拟枚举，不可以初始化，对外开放）
	 */
	public class Feature3DSearchOption extends Enum
	{
		/**
		 * 在所有的三维要素中查询
		 */
		public static const AllFeatures:Number=0;
		/**
		 * 只在最外层三维要素集合中查询
		 */
		public static const TopFeaturesOnly:Number=1;
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Feature3DSearchOption()
		{
			super();
		}
	}
}