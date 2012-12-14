package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 矢量数据集属性字段信息集合类。
	 * 该类主要用于获取矢量图层选择集中元素的属性字段名称集合。该类不可创建。
	 */
	public class FieldInfos extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FieldInfos";
		//在js端对应的类的全名
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FieldInfos";
		
		/**
		 * 构造函数
		 */
		public function FieldInfos(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取矢量图层属性字段的个数。 
		 */
		public function get_count():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_count",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取属性字段信息集合中指定序号（Number 类型）或者指定字段名称（string 类型）的属性字段对象。如果指定索引的属性不存在则返回 Null。
		 * object可以为Number类型，也可以为String 类型
		 */
		public function get_item(object:Object):FieldInfo
		{
			var realArgument:Array;
			if(object is Number)
			{
				realArgument=[object.toString()+"$Number"];
			}
			else if(object is String)
			{
				realArgument=[object.toString()+"$String"];
			}
			
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as FieldInfo;
		}
	}
}