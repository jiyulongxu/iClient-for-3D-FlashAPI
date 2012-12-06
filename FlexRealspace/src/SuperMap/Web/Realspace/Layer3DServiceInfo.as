package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Style3D;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * 图层服务信息类。
	 * 该类主要用于记录服务端发布的指定场景中每个图层服务的信息，包括图层的名称、图层类型和图层所在服务器地址。
	 * 该类不可创建，只能通过 Layer3DServicesList.get_item(index)获取。
	 */
	public class Layer3DServiceInfo extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3DServiceInfo";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3DServiceInfo";
		
		public function Layer3DServiceInfo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		
		/**
		 * 获取图层服务的标题，即图层的别名。
		 */
		public function get_caption():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_caption",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置图层服务的标题，即图层的别名。
		 */
		public function set_caption(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_caption",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		
		/**
		 * 获取图层对应的数据名称。
		 */
		public function get_dataName():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_dataName",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置图层对应的数据名称。
		 */
		public function set_dataName(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_dataName",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取图层服务的描述信息。
		 */
		public function get_description():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_description",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置图层服务的描述信息。
		 */
		public function set_description(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_description",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		
		
		/**
		 * 获取图层服务是否始终进行渲染。
		 */
		public function get_isAlwaysRender():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isAlwaysRender",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 设置图层服务是否始终进行渲染。
		 */
		public function set_isAlwaysRender(value:Boolean):void
		{
			var realArgument:Array=[value+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isAlwaysRender",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取图层服务是否可编辑。
		 */
		public function get_isEditable():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isEditable",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 设置图层服务是否可编辑。
		 */
		public function set_isEditable(value:Boolean):void
		{
			var realArgument:Array=[value+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isEditable",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取图层对象的可选状态。True表示此图层中的对象可选，False表示此图层中对象不可选，默认为True。
		 */
		public function get_isSelectable():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isSelectable",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 设置图层对象的可选状态。True表示此图层中的对象可选，False表示此图层中对象不可选，默认为True。
		 */
		public function set_isSelectable(value:Boolean):void
		{
			var realArgument:Array=[value+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isSelectable",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取图层服务的可见状态。True表示此图层可见，False表示图层不可见，默认为True。当图层不可见时，其他所有的属性的设置将无效。
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
		 * 设置图层服务的可见状态。True表示此图层可见，False表示图层不可见，默认为True。当图层不可见时，其他所有的属性的设置将无效。
		 */
		public function set_isVisible(value:Boolean):void
		{
			var realArgument:Array=[value+"$Boolean"];
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
		 * 获取图层中的最大可见高程值。若大于该高程值时，则该图层将不可见。单位为米。
		 */
		public function get_maxVisibleAltitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_maxVisibleAltitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置图层中的最大可见高程值。若大于该高程值时，则该图层将不可见。单位为米。
		 */
		public function set_maxVisibleAltitude(value:Number):void
		{
			var realArgument:Array=[value+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_maxVisibleAltitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层中的最小可见高程值。若小于该高程值时，则该图层将不可见。单位为米。
		 */
		public function get_minVisibleAltitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_minVisibleAltitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置图层中的最小可见高程值。若小于该高程值时，则该图层将不可见。单位为米。
		 */
		public function set_minVisibleAltitude(value:Number):void
		{
			var realArgument:Array=[value+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_minVisibleAltitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		
		
		/**
		 * 获取图层服务名称。
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
		 * 设置图层服务名称。
		 */
		public function set_name(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_name",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		
		
		/**
		 * 获取图层的风格。主要用于统一设置矢量图层内数据的显示风格。
		 */
		public function get_style3D():Style3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_style3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as Style3D;
		}
		/**
		 * 设置图层的风格。主要用于统一设置矢量图层内数据的显示风格。
		 */
		public function set_style3D(value:Style3D):void
		{
			var realArgument:Array=[value+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_style3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		
		/**
		 * 获取图层服务类型。
		 * Layer3DType
		 */
		public function get_type():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_type",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置图层服务类型。
		 * Layer3DType
		 */
		public function set_type(value:Number):void
		{
			var realArgument:Array=[value+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_type",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
		/**
		 * 获取图层服务中对象的可见距离。即当场景高度小于等于该属性值时，图层中对象即可见。单位为米。
		 * 
		 */
		public function get_visibleDistance():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_visibleDistance",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置图层服务中对象的可见距离。即当场景高度小于等于该属性值时，图层中对象即可见。单位为米。
		 * 
		 */
		public function set_visibleDistance(value:Number):void
		{
			var realArgument:Array=[value+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_visibleDistance",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		
	}
}