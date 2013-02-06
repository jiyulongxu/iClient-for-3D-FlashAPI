package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	
	import flash.utils.getDefinitionByName;
	
	import mx.messaging.AbstractConsumer;

	/**
	 * 三维图层集合类
	 * （不可以初始化，对外开放）
	 * 该类负责对三维场景中的所有三维图层进行管理。
	 * 一个三维场景控件对应一个三维场景，即一个三维场景控件中只能显示一个三维场景；
	 * 一个三维场景对应一个三维图层集合，由三维图层集合负责管理三维场景中显示的所有三维图层。
	 * 三维图层集合类提供了三维图层的添加、删除、移动、查找方法，可以实现向三维场景中添加多种类型的三维图层，
	 * 将不需要显示在三维场景中的三维图层移除，查找三维场景中是否包含指定名称的三维图层以及调整三维场景中各个三维图层的叠放次序。
	 * 该类不可创建，只能通过 Scene.get_layer3Ds获取。
	 */
	public class Layer3Ds extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3Ds";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3Ds";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //服务地址
		 * var serverAddress:String = "http://localhost:8090/iserver/services/components-rest/rest/realspace";
		 * //加载一个影像图层。image_layerName表示该影像图层的图层名称，image_dataName表示该影像图层的数据名称
		 * var imageLayer:SuperMap.Web.Realspace.Layer3D = new SuperMap.Web.Realspace.Layer3D(serverAddress,"image_layerName","image_dataName",SuperMap.Web.Realspace.Layer3DType.IMAGE);
		 * m_scene.get_layer3Ds().insert(imageLayer);
		 * //加载一个矢量图层。vector_layerName表示该矢量图层的图层名称，vector_dataName表示该矢量图层的数据名称
		 * var modelLayer:SuperMap.Web.Realspace.Layer3D = new SuperMap.Web.Realspace.Layer3D(serverAddress,"vector_layerName","vector_dataName",SuperMap.Web.Realspace.Layer3DType.VECTOR);
		 * m_scene.get_layer3Ds().insert(modelLayer);
		 * //加载一个 KML 图层。kml_layerName表示该KML图层的图层名称，kml_dataName表示该KML图层的数据名称
		 * var kmlLayer:SuperMap.Web.Realspace.Layer3D = new SuperMap.Web.Realspace.Layer3D(serverAddress,"kml_lyaerName","kml_dataName",SuperMap.Web.Realspace.Layer3DType.KML);
		 * m_scene.get_layer3Ds().insert(kmlLayer); 
		 * </listing>
		 */
		public function Layer3Ds(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 向三维图层集合中添加 3DImage、3DModel 和 KML 类型的三维图层。
		 * @param strServerRootUrl 图层数据所在的服务器地址。
		 * @param strLayerName 要添加的图层名称。
		 * @param strDataName 与图层对应的数据名称。
		 * @param layer3DType 图层类型。该值必须与从服务器获取的图层类型一致，否则抛异常。
		 * @param addToHead 是否将图层添加到集合的顶部，默认值为 true，即添加最上层。
		 * @return 返回三维图层。
		 */
		public function add(strServerRootUrl:String,strLayerName:String,strDataName:String,layer3DType:Number,addToHead:Boolean=true):Layer3D
		{
			var realArgument:Array=[
				strServerRootUrl+"$String",
				strLayerName+"$String",
				strDataName+"$String",
				layer3DType+"$Number",
				addToHead+"$Boolean"
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
		 * 向三维图层集合中添加按照OGC标准的网络地图服务类型的三维图层，目前仅支持WMS类型。 
		 * @param strServerRootUrl 图层数据所在的服务器地址。
		 * @param strLayerName 要添加的图层名称。
		 * @param layer3DType 图层类型。该值必须与从服务器获取的图层类型一致，否则抛异常。
		 * @param addToHead 是否将图层添加到集合的顶部，默认值为 true，即添加最上层。
		 * @return 返回三维图层。
		 */
		public function addOGC(strServerRootUrl:String,strLayerName:String,layer3DType:Number,addToHead:Boolean):Object
		{
			var realArgument:Array=[
				strServerRootUrl+"$String",
				strLayerName+"$String",
				layer3DType+"$Number",
				addToHead+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"addOGC",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Object;
		}
		
		
		/**
		 * 在三维图层集合中查找指定图层名称的索引号。 
		 * @param strLayerName 要查找的三维图层的名称。
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
		 * 向三维图层集合中指定位置插入 Image、Model 或 KML 类型的三维图层。 
		 * @param layer3D 指定要插入的 Image、Model 或 KML 类型的三维图层。
		 * @param nIndex 插入图层的索引号，即图层插入位置。默认值为0，即插入到顶层。
		 * @return 如果插入成功则返回 True，失败返回 False。
		 */
		public function insert(layer3D:Layer3D,nIndex:Number=0):Boolean
		{
			var realArgument:Array=[
				layer3D.KEY.toString()+"$Object",
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
		 * 将三维图层集合中指定索引号的三维图层向下移动一层。 
		 * @param nIndex 要移动的三维图层的序号。
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
		 * 将三维图层集合中指定索引号的三维图层移动到指定索引号位置。 
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
		 * 将三维图层集合中指定索引号的三维图层移动到底层。 
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
		 * 将三维图层集合中指定索引号的三维图层移动到顶层。 
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
		 * 将三维图层集合中指定索引号的三维图层向上移动一层。 
		 * @param nIndex 要移动的三维图层的序号。
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
		 * 获取给定的三维图层集合中三维图层对象的总数。 
		 * @return 返回给定的三维图层集合中三维图层对象的总数
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
		 * 获取三维图层集合的可见性。 
		 * @return 返回三维图层集合的可见性
		 */
		public function get_isVisible():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isVisible",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置三维图层集合的可见性。 
		 * @param value 需要设置的三维图层集合的可见性
		 */
		public function set_isVisible(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isVisible",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维图层集合中指定序号（Number 类型）或者指定图层名称（String 类型）的三维图层对象。如果指定索引的图层不存在则返回 Null。
		 * @param object 可以为Number类型（代表第几个图层，从0开始），也可以为String 类型（代表图层的名称）
		 * @return 返回三维图层
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