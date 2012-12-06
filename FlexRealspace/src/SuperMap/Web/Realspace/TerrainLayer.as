package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Rectangle2D;
	import SuperMap.Web.Util.ClassBase;

	public class TerrainLayer extends ClassBase
	{
		public var CLASSNAME:String="TerrainLayer";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TerrainLayer";
		public function TerrainLayer(strServerRootUrl:Object=null, strLayerName:String=null, strDataName:String=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(strServerRootUrl is String)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					strServerRootUrl.toString()+"$String",
					strLayerName.toString()+"$String",
					strDataName.toString()+"$String"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=strServerRootUrl["key"] as Number;
				isNew=strServerRootUrl["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 获取地形图层的地理范围。
		 */
		public function get_bounds():Rectangle2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_bounds",
					isReturn:true
			};
			return this.flexToJsCall(array) as Rectangle2D;
		}
	}
}