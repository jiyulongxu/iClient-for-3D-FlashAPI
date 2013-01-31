package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地下类。
	 * （不可以初始化，对外开放）
	 * 该类提供了在三维场景中返回/设置地下是否可见以及进入地下时所处的深度等接口。
	 * 该类不能被创建，只能从当前场景中获取 Scene.get_underground()。
	 */
	public class Underground extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Underground";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Underground";
		/**
		 * 
		 */
		public function Underground(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}