package SuperMap.Web.iServerJava6R.Data3D
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 查询事件参数。
	 * （不可以初始化，对外开放）
	 */
	public class GetFeature3DsEventArgs extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GetFeature3DsEventArgs";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsEventArgs";
		
		/**
		 * 
		 */
		public function GetFeature3DsEventArgs(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取查询结果。
		 * @return 返回查询结果
		 */
		public function get_result(): GetFeature3DsResult
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_result",
					isReturn:true
			};
			return this.flexToJsCall(array) as  GetFeature3DsResult;
		}
	}
}