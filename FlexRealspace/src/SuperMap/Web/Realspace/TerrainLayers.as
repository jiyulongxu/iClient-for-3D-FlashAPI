package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地形图层集合类。
	 * 该类包括了地形图层集合的相关信息，可以通过设置该类对象来对地形图层进行管理操作，
	 * 包括地形图层添加、删除、排序、查找的功能。通过 Scene 可以获取到该对象。
	 */
	public class TerrainLayers extends ClassBase
	{
		public var CLASSNAME:String="TerrainLayers";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TerrainLayers";
		public function TerrainLayers(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		
		/**
		 * 向地形图层集合中添加地形图层。
		 * strServerRootUrl：地形图层所在的服务器地址。
		 * strLayerName：要添加的地形图层名称，不区分大小写。如果图层名称已存在，则抛出异常 。
		 * strDataName：与地形图层对应的数据名称。
		 * addToHead：是否将新添加的地形图层添加到头部. 
		 * 返回三维图层。
		 */
		public function add(strServerRootUrl:String,strLayerName:String,strDataName:String,addToHead:Boolean):TerrainLayer
		{
			var realArgument:Array=[
				strServerRootUrl+"$String",
				strLayerName+"$String",
				strDataName+"$String",
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
			return this.flexToJsCall(array) as TerrainLayer;
		}
		
		/**
		 * 获取地形图层集合中指定序号（Number 类型）或者指定图层名称（string 类型）的地形图层对象。
		 * object可以为Number类型（代表第几个图层，从0开始），也可以为String 类型（代表图层的名称）
		 */
		public function get_item(object:Object):TerrainLayer
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
			return this.flexToJsCall(array) as TerrainLayer;
		}
		/**
		 * 删除地形图层集合中的所有图层。
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