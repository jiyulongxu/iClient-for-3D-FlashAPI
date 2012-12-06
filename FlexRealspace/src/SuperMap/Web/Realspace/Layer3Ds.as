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
		 * 向三维图层集合中添加 3DImage、3DModel 和 KML 类型的三维图层。
		 * strServerRootUrl：图层数据所在的服务器地址。
		 * strLayerName：要添加的图层名称。
		 * strDataName：与图层对应的数据名称。
		 * layer3DType：图层类型。该值必须与从服务器获取的图层类型一致，否则抛异常。
		 * addToHead：是否将图层添加到集合的顶部，默认值为 true，即添加最上层。
		 * 返回三维图层。
		 */
		public function add(strServerRootUrl:String,strLayerName:String,strDataName:String,layer3DType:Number,addToHead:Boolean):Layer3D
		{
			var realArgument:Array=[
				strServerRootUrl+"$String",
				strLayerName+"$String",
				strDataName+"$String",
				layer3DType+"$Number",
				addToHead+"$Boolean",
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"add",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Layer3D;
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
		/**
		 * 删除图层集合中的所有图层。
		 */
		public function removeAll():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"removeAll",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
	}
}