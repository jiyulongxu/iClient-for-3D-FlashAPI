package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Rectangle2D;
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 地形图层类。
	 * （可以初始化，对外开放）
	 * 该类包含了地形图层对象的相关属性信息，如图层名、获取该图层的服务器地址等。
	 */
	public class TerrainLayer extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="TerrainLayer";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TerrainLayer";
		/**
		 * TerrainLayer 构造函数
		 * 
		 * @param strServerRootUrl 经度（String类型）
		 * @param strLayerName 纬度
		 * @param strDataName 高度
		 * 
		 */
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
		 * @return 返回地形图层的地理范围
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