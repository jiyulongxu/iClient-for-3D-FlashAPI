package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	
	import flash.utils.getDefinitionByName;
	/**
	 * 三维图层集合类
	 * 该类负责对三维场景中的所有三维图层进行管理。
	 * 一个三维场景控件对应一个三维场景，即一个三维场景控件中只能显示一个三维场景；
	 * 一个三维场景对应一个三维图层集合，由三维图层集合负责管理三维场景中显示的所有三维图层。
	 * 三维图层集合类提供了三维图层的添加、删除、移动、查找方法，可以实现向三维场景中添加多种类型的三维图层，
	 * 将不需要显示在三维场景中的三维图层移除，查找三维场景中是否包含指定名称的三维图层以及调整三维场景中各个三维图层的叠放次序。
	 * 该类不可创建，只能通过 Scene.get_layer3Ds获取。
	 */
	public class Layer3Ds extends ClassBase
	{
		public var CLASSNAME:String="Layer3Ds";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3Ds";
		
		public function Layer3Ds(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取三维图层集合中指定序号（Number 类型）或者指定图层名称（String 类型）的三维图层对象。如果指定索引的图层不存在则返回 Null。
		 * object可以为Number类型（代表第几个图层，从0开始），也可以为String 类型（代表图层的名称）
		 */
		public function get_item(object:Object):Layer3D
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
			return this.flexToJsCall(array) as Layer3D;
		}
	}
}