package SuperMap.Js
{
	import flash.utils.ByteArray;
	/**
	 * 制定js文件以及打包方式
	 */
	[Embed(source="ApplicationManager.js", mimeType="application/octet-stream")]
	public class ApplicationManagerStream extends ByteArray
	{
		public function ApplicationManagerStream()
		{    
			super();
		}
	}
}