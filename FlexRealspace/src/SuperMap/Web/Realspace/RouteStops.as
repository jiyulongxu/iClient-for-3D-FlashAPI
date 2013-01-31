package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 飞行站点集合对象
	 * （可以初始化，对外开放）
	 */
	public class RouteStops extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="RouteStops";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.RouteStops";
		/**
		 * 构造函数
		 * 
		 */
		public function RouteStops(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object==null)
			{
				key=0;
				isNew=true;
				array={
					className:this.REALSPACE_CLASSNAME
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
	}
}