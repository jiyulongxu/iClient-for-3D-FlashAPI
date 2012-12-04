package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 屏幕图层类
	 */
	public class ScreenLayer3D extends ClassBase
	{
		public var CLASSNAME:String="ScreenLayer3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.ScreenLayer3D";
		public function ScreenLayer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}