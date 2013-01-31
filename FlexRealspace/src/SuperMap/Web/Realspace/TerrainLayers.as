package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地形图层集合类。
	 * （不可以初始化，对外开放）
	 * 该类包括了地形图层集合的相关信息，可以通过设置该类对象来对地形图层进行管理操作，
	 * 包括地形图层添加、删除、排序、查找的功能。通过 Scene 可以获取到该对象。
	 */
	public class TerrainLayers extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="TerrainLayers";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TerrainLayers";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function TerrainLayers(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		
		/**
		 * 向地形图层集合中添加地形图层。
		 * @param strServerRootUrl 地形图层所在的服务器地址。
		 * @param strLayerName 要添加的地形图层名称，不区分大小写。如果图层名称已存在，则抛出异常 。
		 * @param strDataName 与地形图层对应的数据名称。
		 * @param addToHead 是否将新添加的地形图层添加到头部. 
		 * @return 返回三维图层。
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
		 * 在地形图层集合中查找指定图层名称的索引位置。 
		 * @param strLayerName 要查找的地形图层的名称。
		 * @return 若查找到指定图层的索引号则返回索引值，否则返回 -1。
		 */
		public function indexOf(strLayerName:String):Number
		{
			var realArgument:Array=[
				strLayerName+"$String"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"indexOf",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Number;
		}
		
		
		/**
		 * 向地形图层集合中的指定位置插入地形图层。  
		 * @param terrainLayer 地形图层对象。
		 * @param nIndex 插入图层的索引号，即图层插入位置。默认值为0，即插入到顶层。
		 * @return 如果插入成功则返回 True，失败返回 False。
		 */
		public function insert(terrainLayer:TerrainLayer,nIndex:Number=0):Boolean
		{
			var realArgument:Array=[
				terrainLayer.KEY.toString()+"$Object",
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"insert",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 将地形图层集合中指定索引号的图层向下移动一层。
		 * @param nIndex 要移动的地形图层的序号。
		 * @return 如果移动成功则返回 True，失败返回 False。
		 */
		public function moveDown(nIndex:Number):Boolean
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"moveDown",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		
		/**
		 * 将地形图层集合中指定索引号的图层移动到指定索引位置。 
		 * @param nFromIndex 待移动图层索引号。 
		 * @param nIndex 目标索引号，即目标位置。 
		 * @return 如果移动成功则返回 True，失败返回 False。
		 */
		public function moveTo(nFromIndex:Number,nIndex:Number):Boolean
		{
			var realArgument:Array=[
				nFromIndex.toString()+"$Number",
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"moveTo",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 将地形图层集合中指定索引号的图层移动到底层。  
		 * @param nIndex 待移动图层索引号。
		 * @return 如果移动成功或该图层已经在底层则返回 True，失败返回 False。
		 */
		public function moveToBottom(nIndex:Number):Boolean
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"moveToBottom",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 将地形图层集合中指定索引号的图层移动到顶层。
		 * @param nIndex 待移动图层索引号。
		 * @return 如果移动成功或该图层已经在顶层则返回 True，失败返回 False。
		 */
		public function moveToTop(nIndex:Number):Boolean
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"moveToTop",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 将地形图层集合中指定索引号的图层向上移动一层。 
		 * @param nIndex 待移动图层索引号。
		 * @return 如果移动成功则返回 True，失败返回 False。
		 */
		public function moveUp(nIndex:Number):Boolean
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"moveUp",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
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
		
		/**
		 * 删除指定图层名称或索引号的图层。
		 * @param object 该参数可以为待删除图层的索引号，对应 Number 类型；也可以是图层名称（与服务器上图层名称一致），对应 string 类型。
		 * @return 如果删除成功则返回 True，失败返回 False。
		 */
		public function removeAt(object:Object):Boolean
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
					functionName:"removeAt",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 获取给定的地形图层集合中地形图层对象的总数。 
		 * @return 返回给定的地形图层集合中地形图层对象的总数
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
		 * 获取地形图层集合中指定序号（Number 类型）或者指定图层名称（string 类型）的地形图层对象。
		 * @param object 可以为Number类型（代表第几个图层，从0开始），也可以为String 类型（代表图层的名称）
		 * @return 返回地形图层对象
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
		
	}
}