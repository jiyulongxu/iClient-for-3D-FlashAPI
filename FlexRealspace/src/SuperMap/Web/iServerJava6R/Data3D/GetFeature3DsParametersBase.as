package SuperMap.Web.iServerJava6R.Data3D
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 要素查询参数基类。
	 * （不可以初始化，对外开放）
	 */
	public class GetFeature3DsParametersBase extends ClassBase
	{
		/**
		 * @param key 此对象的唯一标示
		 * @param isNew 是否需要往js端发送消息
		 * @param array 记录属性的键值对
		 */
		public function GetFeature3DsParametersBase(key:Number=0, isNew:Boolean=true, array:Object=null)
		{
			super(key, isNew, array);
		}
		//此方法经过验证无效，js端此方法内部参数错误
//		/**
//		 * 获取查询的数据集名称数组 （ datasourceName:datasetName ）。 
//		 * 返回字符串一维数组
//		 */
//		public function get_datasetNames(): Array
//		{
//			var array:Object={
//				action:"FUNCTION",
//				isNew:true,
//				key:this.KEY,
//					functionName:"get_datasetNames",
//					isReturn:true
//			};
//			return this.flexToJsCall(array) as  Array;
//		}
		/**
		 * 设置查询的数据集名称数组 （ datasourceName:datasetName ）。
		 * @param value 数据集名称数组（字符串一维数组） 
		 */
		public function set_datasetNames(value:Array):void
		{
			//参数为数组时调用基类的方法objectToString来转换为字符串
			//也可以自己写，不过规则比较复杂
			var realArgument:Array=[this.objectToString(value)];
			//var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_datasetNames",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}