package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Feature3D;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * 屏幕图层类
	 * （不可以初始化，对外开放）
	 * 屏幕图层不同于三维图层、地形图层、影像图层和跟踪图层，屏幕图层中的对象并不是依据对象的坐标信息将其放到三维场景中的地球上，
	 * 而是放在屏幕上（三维窗口表面），因此，屏幕图层上的几何对象不随三维场景中球体的旋转、倾斜等操作而变化，而是可以随着三维窗口的改变而变化，
	 * 如随着三维窗口的放大、缩小而改变相应的位置，可以说屏幕图层上的对象是相对于三维窗口静止的，这样，可以通过屏幕图层放置诸如 Logo、说明性文字等需要静止显示在三维窗口中的内容。
	 * 一个三维场景有且只有一个屏幕图层，可以向屏幕图层添加任何三维要素对象，系统会为添加的每个对象建立索引。通过该类还可以设置对象的显示位置、大小，也可以删除不需要的几何对象。
	 */
	public class ScreenLayer3D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="ScreenLayer3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.ScreenLayer3D";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function ScreenLayer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 向屏幕图层中添加一个要素对象，并指定标签信息。
		 * @param feature3D 要素对象。
		 * @param tag 要素的标签。
		 * @return 返回要素的id
		 */
		public function add(feature3D:Feature3D,tag:String):Number
		{
			var realArgument:Array=[
				feature3D.KEY.toString()+"$Object",
				tag+"$String"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"add",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 释放资源。
		 */
		public function dispose():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"dispose",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取屏幕图层中指定索引号的要素对象的标签。 
		 * @param index 指定要素对象的索引号。
		 * @return 返回屏幕图层中指定索引号的要素对象的标签。
		 */
		public function getTag(index:Number):String
		{
			var realArgument:Array=[
				index.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getTag",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as String;
		}
		
		/**
		 * 获取屏幕图层中指定标签对应的要素的索引号。 
		 * @param tag 指定标签。
		 * @return 返回指定标签对应的要素的索引号。如果存在标签相同的要素，则返回第一个标签对应的要素的索引。
		 */
		public function indexOf(tag:String):Number
		{
			var realArgument:Array=[
				tag+"$String"
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
		 * 获取指定索引处的对象是否属于选中状态。要使一个对象属于选中状态需要通过 setSelected 方法来指定。
		 * @param index 指定的索引。
		 * @return true 表示指定索引的对象属于选中状态，否则返回 false。
		 */
		public function isSelected(index:Number):Boolean
		{
			var realArgument:Array=[
				index.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"isSelected",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 刷新屏幕图层。当修改了屏幕图层中要素对象的风格后，需要调用此方法刷新图层，这样才可以使修改的要素对象的风格正常显示。
		 */
		public function refresh():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"refresh",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 删除屏幕图层中的所有要素对象。
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
		 * 删除指定索引的要素对象。 
		 * @param index 指定索引。
		 * @return 删除成功返回 true，否则返回 false。
		 */
		public function removeAt(index:Number):Boolean
		{
			var realArgument:Array=[
				index.toString()+"$Number"
			];
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
		 * 设置指定索引的对象是否为选中状态。
		 */
		public function setSelected():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"setSelected",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 设置屏幕图层中指定索引号的要素对象的标签。
		 * @param index 指定索引。
		 * @param tag 要添加的标签。 
		 */
		public function setTag(index:Number,tag:String):void
		{
			var realArgument:Array=[
				index.toString()+"$Number",
				tag+"$String"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"setTag",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取屏幕图层中要素对象的个数。 
		 * @return 返回屏幕图层中要素对象的个数
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
		 * 获取屏幕图层的可见状态，默认为 false，即不可见。 
		 * @return 返回屏幕图层的可见状态
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
		 * 设置屏幕图层的可见状态，默认为 false，即不可见。
		 * @param value 设置 屏幕图层的可见状态
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
		 * 获取屏幕图层中指定索引的要素对象。屏幕图层中要素对象的序号从0开始编号。若指定索引的对象不存在则返回 null。
		 * @return 返回屏幕图层中指定索引的要素对象
		 */
		public function get_item():Feature3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true
			};
			return this.flexToJsCall(array) as Feature3D;
		}
		
		/**
		 * 设置屏幕图层中指定索引的要素对象。屏幕图层中要素对象的序号从0开始编号。若指定索引的对象不存在则返回 null。 
		 * @param value 需要设置的屏幕图层中指定索引的要素对象
		 */
		public function set_item(value:Feature3D):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_item",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取屏幕图层 X 轴方向的坐标单位类型。
		 * @return 返回坐标单位类型（ScreenCoordinateUnit）
		 */
		public function get_xUnit():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_xUnit",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置屏幕图层 X 轴方向的坐标单位类型。
		 * @param value 设置坐标单位类型（ScreenCoordinateUnit）
		 */
		public function set_xUnit(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_xUnit",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取屏幕图层 Y 轴方向的坐标单位类型。 
		 * @return 返回坐标单位类型（ScreenCoordinateUnit）
		 */
		public function get_yUnit():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_yUnit",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置屏幕图层 Y 轴方向的坐标单位类型。
		 * @param value 设置坐标单位类型（ScreenCoordinateUnit）
		 */
		public function set_yUnit(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_yUnit",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}