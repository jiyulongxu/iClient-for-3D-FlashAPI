package SuperMap.Web.iServerJava6R.Data3D
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 要素查询参数基类。
	 */
	public class GetFeature3DsResult extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GetFeature3DsResult";
		//在js端对应的类的全名
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsResult";
		
		public function GetFeature3DsResult(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key, isNew, null);
		}
		/**
		 * 获取查询结果内的 Features3D 集合。
		 * 返回 Feature3D[]
		 */
		public function get_feature3Ds(): Array
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_feature3Ds",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Array;
		}
		/**
		 * 获取查询结果内的 Features3D 数量。
		 */
		public function get_featureCount(): Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_featureCount",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Number;
		}
	}
}