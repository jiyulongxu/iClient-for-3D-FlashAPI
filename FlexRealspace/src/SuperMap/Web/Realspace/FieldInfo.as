package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 矢量数据集属性字段信息类。
	 * （不可以初始化，对外开放）
	 * 该类主要用于获取矢量图层选择集中元素的属性字段名称。该类不可创建。
	 */
	public class FieldInfo extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FieldInfo";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FieldInfo";
		
		/**
		 * 
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function FieldInfo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取属性字段别名。
		 * @return 返回属性字段别名
		 */
		public function get_foreignName():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_foreignName",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 获取属性字段的名称。 
		 * @return 返回属性字段的名称
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
	}
}