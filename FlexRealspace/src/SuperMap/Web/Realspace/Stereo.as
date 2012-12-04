package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 立体显示模式类。
	 * 该类可用来设置立体显示的模式以及立体显示时的参数设置。
	 * 该类不能被创建，只能通过scene.get_stereo();
	 */
	public class Stereo extends ClassBase
	{
		public var CLASSNAME:String="Stereo";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Stereo";
		public function Stereo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}