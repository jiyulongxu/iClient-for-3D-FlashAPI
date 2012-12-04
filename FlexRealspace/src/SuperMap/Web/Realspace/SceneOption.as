package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维场景界面元素类
	 */
	public class SceneOption extends ClassBase
	{
		public var CLASSNAME:String="SceneOption";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.SceneOption";
		public function SceneOption(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}