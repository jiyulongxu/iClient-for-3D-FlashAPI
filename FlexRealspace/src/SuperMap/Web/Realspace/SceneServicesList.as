package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 场景服务列表信息类
	 * 该类主要用于获取服务端发布的全部场景服务信息列表。
	 * 该类不可创建，只能通过 SceneControl.get_sceneServicesList() 获取。
	 */
	public class SceneServicesList extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="SceneServicesList";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.SceneServicesList";
		
		public function SceneServicesList(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}