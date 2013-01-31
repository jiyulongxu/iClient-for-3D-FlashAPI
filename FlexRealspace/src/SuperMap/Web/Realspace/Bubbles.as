package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 气泡框集合对象。
	 * （不可以初始化，对外开放）
	 */
	public class Bubbles extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Bubbles";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Bubbles";
		/**
		 * 
		 */
		public function Bubbles(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}