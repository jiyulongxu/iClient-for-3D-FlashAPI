package SuperMap.Web.Core
{
	/**
	 * 三维地标几何对象类
	 */
	public class GeoPlacemark extends Geometry3D
	{
		public var CLASSNAME:String="GeoPlacemark";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.GeoPlacemark";
		public function GeoPlacemark(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object==null)
			{
				key=0;
				isNew=true;
				array={
					className:this.REALSPACE_CLASSNAME
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 获取三维地标几何对象所对应的要素对象。
		 * 该要素对象可以作为三维要素对象显示在三维场景窗口中，
		 * 同时，该要素对象还用来确定三维地标几何对象名称所显示的位置。
		 */
		public function get_feature3D():Feature3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_feature3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as Feature3D;
		}
		/**
		 * 设置三维地标几何对象所对应的要素对象。
		 * 该要素对象可以作为三维要素对象显示在三维场景窗口中，
		 * 同时，该要素对象还用来确定三维地标几何对象名称所显示的位置。
		 */
		public function set_feature3D(value:Feature3D):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_feature3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维地标几何对象的名称。
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
		 * 设置三维地标几何对象的名称。
		 */
		public function set_name(value:String):void
		{
			var realArgument:Array=[
				value+"$String"
			];
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
	}
}