package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 图层服务列表信息类。
	 * 该类主要用于获取服务端发布的全部三维图层集合服务及其三维图层集合中的各个图层的信息。
	 * 需要注意的是该类只获取了有哪些三维图层服务，而不负责具体数据的加载。
	 * 该类不可创建，只能通过 SceneControl.get_layer3DServiceInfo获取。
	 */
	public class Layer3DServicesList extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3DServicesList";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3DServicesList";
		
		public function Layer3DServicesList(object:Object=null)
		{
			
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}