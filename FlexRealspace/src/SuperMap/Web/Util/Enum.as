package SuperMap.Web.Util
{
	/**
	 * 所有枚举类的基类
	 * （不对外公开）
	 * as语法其实不存在枚举，都是通过静态常量来实现的
	 * 此类的存在仅仅是便于和常用类进行区分，此类的子类都不需要访问js端，只在普通类使用时在js解析字符串
	 */
	public class Enum
	{
		/**
		 * 枚举类基类构造函数
		 */
		public function Enum()
		{
		}
	}
}