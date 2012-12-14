package SuperMap.Web.iServerJava6R.Data3D
{
	import SuperMap.Web.Util.ClassBase;
	import SuperMap.Web.iServerJava6R.FilterParameter;

	/**
	 * SQL查询参数对象类。
	 */
	public class GetFeature3DsBySQLParameters extends GetFeature3DsParametersBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GetFeature3DsBySQLParameters";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsBySQLParameters";
		public function GetFeature3DsBySQLParameters(object:Object=null)
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
		 * 获取查询的 SQL 条件。
		 */
		public function get_filterParameter(): FilterParameter
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_filterParameter",
					isReturn:true
			};
			return this.flexToJsCall(array) as  FilterParameter;
		}
		/**
		 * 设置查询的 SQL 条件。
		 */
		public function set_filterParameter(value:FilterParameter):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_filterParameter",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}