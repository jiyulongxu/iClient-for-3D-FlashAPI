package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 路线集合类。
	 */
	public class FlyRoutes extends ClassBase
	{
		public var CLASSNAME:String="FlyRoutes";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyRoutes";
		
		public function FlyRoutes(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 从指定的文件中导入路线对象。
		 * strPathURL：指定的文件全路径。
		 * 返回文件是否成功导入，成功导入返回 True，否则返回 False。
		 */
		public function fromFile(strPathURL:String):Boolean
		{
			var realArgument:Array=[strPathURL+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"fromFile",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 获取当前的飞行路线，没有飞行路线返回NULL 。
		 */
		public function get_currentRoute():FlyRoute
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_currentRoute",
					isReturn:true
			};
			return this.flexToJsCall(array) as FlyRoute;
		}
	}
}