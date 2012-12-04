package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Feature3D;
	import SuperMap.Web.Util.ClassBase;
	
	import flash.utils.getDefinitionByName;
	
	public class Layer3D extends ClassBase
	{
		public var CLASSNAME:String="Layer3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3D";
		
		public function Layer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取三维图层的图层名。图层的名称在图层所在的三维场景中唯一标识此图层。该标识不区分大小写。
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
		 * 获取图层中指定ID的Feature3D对象。通过该方法可以将选择到的Feature3D对象查找出来，
		 * 并使用其名称、是否可见、可见高度三个属性信息。
		 */
		public function findFeature3DByID(id:Number):Feature3D
		{
			//var feature3DKey:Number=this.getSoleKey();
			var realArgument:Array=[id.toString()+"$Number"];;
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"findFeature3DByID",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Feature3D;
		}
	}
}