package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 全球底图类
	 * （不可以初始化，对外开放）
	 * 该类提供了在三维场景中获取/设置全球底图透明度、在全球底图上添加/返回/移除挖方区域几何对象等接口。
	 * 
	 * 挖方区域几何对象对应的范围将透明显示。该类不能被创建，只能从当前场景中获取 Scene.get_globalImage()。
	 */
	public class GlobalImage extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GlobalImage";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.GlobalImage";
		/**
		 * 
		 */
		public function GlobalImage(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}