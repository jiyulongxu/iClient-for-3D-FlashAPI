package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	
	public class Feature3D extends ClassBase
	{
		public var CLASSNAME:String="Feature3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Feature3D";
		public function Feature3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取三维要素对象的名称。
		 */
		public function get_name():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置三维要素对象的名称。
		 */
		public function set_name(value:String):void
		{
		}
	}
}