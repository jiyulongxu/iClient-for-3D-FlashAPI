package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 异步助手类。
	 * 在不影响主界面操作的情况下，异步助手帮助用户通过异步下载的方式来完成三维图层、模型、图片的下载。
	 */
	public class AsyncHelper extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="AsyncHelper";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.AsyncHelper";
		public function AsyncHelper(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}