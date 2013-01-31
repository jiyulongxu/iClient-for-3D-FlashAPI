package SuperMap.Web.Core
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 文本对齐方式常量
	 * （模拟枚举，不可以初始化，对外开放）
	 * 文本对齐常量指定文本中各子对象的对齐方式。文本对象的每个子对象的位置是由文本的锚点和文本的对齐方式共同确定的。
	 * 当文本子对象的锚点固定，对齐方式确定文本子对象与锚点的相对位置，从而确定文本子对象的位置。
	 */
	public class TextAlignment extends Enum
	{
		/**
		 * 基准线居中对齐。当文本的对齐方式为基准线居中对齐时，文本子对象的基线的中点在该文本子对象的锚点位置。
		 */
		public static const BaselineCenter:Number=4;
		/**
		 * 基准线左对齐。当文本的对齐方式为基准线左对齐时，文本子对象的基线的左端点在该文本子对象的锚点位置。
		 */
		public static const BaselineLeft:Number=3;
		/**
		 * 基准线右对齐。当文本的对齐方式为基准线右对齐时，文本子对象的基线的右端点在该文本子对象的锚点位置。
		 */
		public static const BaselineRight:Number=5;
		/**
		 * 底部居中对齐。当文本的对齐方式为底线居中对齐时，文本子对象的最小外接矩形的底线中点在该文本子对象的锚点位置。
		 */
		public static const BottomCenter:Number=7;
		/**
		 * 左下角对齐。当文本的对齐方式为左下角对齐时，文本子对象的最小外接矩形的左下角点在该文本子对象的锚点位置。
		 */
		public static const BottomLeft:Number=6;
		/**
		 * 右下角对齐。当文本的对齐方式为右下角对齐时，文本子对象的最小外接矩形的右下角点在该文本子对象的锚点位置。
		 */
		public static const BottomRight:Number=8;
		/**
		 * 中心对齐。当文本的对齐方式为中心对齐时，文本子对象的最小外接矩形的中心点在该文本子对象的锚点位置。
		 */
		public static const MiddleCenter:Number=10;
		/**
		 * 左中对齐。当文本的对齐方式为左中对齐时，文本子对象的最小外接矩形的左边线的中点在该文本子对象的锚点位置。
		 */
		public static const MiddleLeft:Number=9;
		/**
		 * 右中对齐。当文本的对齐方式为右中对齐时，文本子对象的最小外接矩形的右边线的中点在该文本子对象的锚点位置。
		 */
		public static const MiddleRight:Number=11;
		/**
		 * 顶部居中对齐。当文本的对齐方式为顶部居中对齐时，文本子对象的最小外接矩形的上边线的中点在该文本子对象的锚点位置。
		 */
		public static const TopCenter:Number=1;
		/**
		 * 左上角对齐。当文本的对齐方式为左上角对齐时，文本子对象的最小外接矩形的左上角点在该文本子对象的锚点位置。
		 */
		public static const TopLeft:Number=0;
		/**
		 * 右上角对齐。当文本的对齐方式为右上角对齐时，文本子对象的最小外接矩形的右上角点在该文本子对象的锚点位置。
		 */
		public static const TopRight:Number=2;
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function TextAlignment()
		{
			super();
		}
	}
}