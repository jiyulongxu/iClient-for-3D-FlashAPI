package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Feature3D;
	import SuperMap.Web.Core.Point;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * 跟踪图层类
	 */
	public class TrackingLayer3D extends ClassBase
	{
		public var CLASSNAME:String="TrackingLayer3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TrackingLayer3D";
		public function TrackingLayer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 向跟踪图层添加一个要素对象，并设置标签信息。
		 * feature3D：要添加的要素对象。
		 * tag：要添加的要素的标签。
		 * 返回要素在跟踪图层中的索引号。
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
		 * index：指定要素对象的索引号。
		 * 返回跟踪图层中指定索引号的要素对象的标签。
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
		 * hitPoint：像素坐标系下的点对象。
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
		 * tag：指定标签。
		 * 返回指定标签对应的要素的索引号。如果存在标签相同的要素，则返回第一个标签对应的要素的索引。
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
		 * index：指定索引。
		 * 删除成功返回 true，否则返回 false。
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
		 * index：指定索引。
		 * tag：要添加的标签。 
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
		 * 
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