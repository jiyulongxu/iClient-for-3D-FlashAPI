package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 异常名称枚举类。
	 * 该类罗列了多种程序异常提示信息。
	 */
	public class ExceptionName extends Enum
	{
		/**
		 * 参数非法
		 */
		public static const ArgumentIllegal:Number=4;
		/**
		 * 参数为非法参数 null
		 */
		public static const ArgumentNullIllegal:Number=5;
		/**
		 * 参数越界非法
		 */
		public static const ArgumentOutOfRange:Number=6;
		/**
		 * 参数类型非法
		 */
		public static const ArgumentTypeIllegal:Number=7;
		/**
		 * 参数为 Undefined非法参数
		 */
		public static const ArgumentUndefinedIllegal:Number=9;
		/**
		 * 不支持该浏览器
		 */
		public static const BrowserNotSupport:Number=1;
		/**
		 * 下载失败或打开文件失败
		 */
		public static const FileOrDownloadFailed:Number=10;
		/**
		 * 脚本库版本低
		 */
		public static const LibVersionLower:Number=13;
		/**
		 * 操作失败
		 */
		public static const OperationFailed:Number=3;
		/**
		 * 参数个数非法
		 */
		public static const ParameterCountIllegal:Number=8;
		/**
		 * 插件尚未初始化，插件未初始化可能是未安装 ActiveX 插件或插件安装失败。
		 */
		public static const PlugInNotInstalled:Number=2;
		/**
		 * 插件库版本低
		 */
		public static const PluginVersionLower:Number=12;
		/**
		 * 系统OpenGL版本较低显示效果不被支持
		 */
		public static const RenderSystemIsNotSupported:Number=11;
		public function ExceptionName()
		{
			super();
		}
	}
}