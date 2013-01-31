package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 立体显示模式类。
	 * （不可以初始化，对外开放）
	 * 该类可用来设置立体显示的模式以及立体显示时的参数设置。
	 * 该类不能被创建，只能通过scene.get_stereo();
	 */
	public class Stereo extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Stereo";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Stereo";
		/**
		 * 
		 */
		public function Stereo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}