package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Feature3D;
	import SuperMap.Web.Core.Point;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * 跟踪图层类
	 * （不可以初始化，对外开放）
	 * 每个三维场景都有一个跟踪图层。跟踪图层是一个空白的透明图层，总是在场景中各图层的最上层，主要用于临时标记或显示一些图形对象和文本等。
	 * 只要场景显示，跟踪图层就会存在，不可以删除跟踪图层，也不可以改变其位置。跟踪图层的作用主要有以下方面：
	 * 1、当不想往记录集中添加几何对象，而又需标记或显示几何对象时，就可以把这个几何对象临时添加到跟踪图层上，用完该几何对象之后清除跟踪图层即可。
	 * 例如，当需要测量距离时，需要在图层上标记两点间的连线，此时就可以使用跟踪图层来实现。
	 * 2、当需要对目标进行动态跟踪的时候，如果把目标放到记录集中，要实现动态跟踪就得不断地刷新整个图层，这样会大大影响效率，如果将这个需要进行跟踪的目标放到跟踪层上，这样就只需要刷新跟踪图层即可实现动态跟踪。
	 * 3、当需要进行批量地往记录集中添加几何对象的时候，可以先将这些对象临时放在跟踪图层上，确信需要添加之后再把跟踪图层上的几何对象批量地添加到记录集中。
	 * 你可以对跟踪图层进行控制，包括控制跟踪图层是否可显示、可编辑、可选择、可捕捉以及符号是否随图缩放。所不同的是，跟踪图层中的对象是不保存的，只是在场景显示时，临时存在内存中。
	 * 当场景关闭后，跟踪图层中的对象就不再存在，当场景再次被打开后，跟踪图层又显示为一个空白而且透明的图层。该类提供了对跟踪图层上的几何对象进行添加、删除等方法。
	 * 并且可以通过设置标签的方式对跟踪图层上的几何对象进行分类，你可以将标签理解为对几何对象的描述，相同用途的几何对象可以具有相同的标签。
	 * 该类不可创建，只能从 Scene.get_TrackingLayer3D() 获取。
	 */
	public class TrackingLayer3D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="TrackingLayer3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TrackingLayer3D";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function TrackingLayer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 向跟踪图层添加一个要素对象，并设置标签信息。
		 * @param feature3D 要添加的要素对象。
		 * @param tag 要添加的要素的标签。
		 * @return 返回要素在跟踪图层中的索引号。
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
		 * 获取跟踪图层中指定索引号的要素对象的标签。
		 * @param index 指定要素对象的索引号。
		 * @return 返回跟踪图层中指定索引号的要素对象的标签。
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
		 * 根据屏幕坐标 Point 获取对应的 Feature3D 对象。
		 * @param hitPoint 像素坐标系下的点对象。
		 * @return 返回三维地理要素
		 */
		public function hitTest(hitPoint:Point):Feature3D
		{
			var realArgument:Array=[
				hitPoint.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"hitTest",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Feature3D;
		}
		
		/**
		 * 获取跟踪图层中指定标签对应的要素的索引号。 
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
		 * 刷新跟踪图层。当修改了跟踪图层中要素对象的风格后，需要调用此方法刷新图层，这样才可以使修改的要素对象的风格正常显示。
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
		 * 删除跟踪图层中的所有要素对象。 
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
		 * 设置跟踪图层中指定索引号的要素对象的标签。
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
		 * 获取跟踪图层中要素对象的个数。  
		 * @return 返回跟踪图层中要素对象的个数
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
		 * 获取跟踪图层的可见状态，默认为 false，即不可见。 
		 * @return 返回跟踪图层的可见状态
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
		 * 设置跟踪图层的可见状态，默认为 false，即不可见。 
		 * @param value 设置跟踪图层的可见状态
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
		 * 获取跟踪图层中指定索引的要素对象。跟踪图层中要素对象的序号从0开始编号。若指定索引的对象不存在则返回 null，否则返回Feature3D。 
		 * @return 返回跟踪图层中指定索引的要素对象
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
		 * 设置跟踪图层中指定索引的要素对象。跟踪图层中要素对象的序号从0开始编号。若指定索引的对象不存在则返回 null，否则返回Feature3D。 
		 * @param value 需要设置的跟踪图层中指定索引的要素对象
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
		
	}
}