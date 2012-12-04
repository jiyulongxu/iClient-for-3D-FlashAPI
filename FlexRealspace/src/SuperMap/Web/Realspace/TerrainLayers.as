package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地形图层集合类。
	 * 该类包括了地形图层集合的相关信息，可以通过设置该类对象来对地形图层进行管理操作，
	 * 包括地形图层添加、删除、排序、查找的功能。通过 Scene 可以获取到该对象。
	 */
	public class TerrainLayers extends ClassBase
	{
		public var CLASSNAME:String="TerrainLayers";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TerrainLayers";
		public function TerrainLayers(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}