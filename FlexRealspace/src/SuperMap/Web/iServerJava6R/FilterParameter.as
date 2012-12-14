package SuperMap.Web.iServerJava6R
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 查询过滤参数类。
	 */
	public class FilterParameter extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FilterParameter";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.iServerJava6R.FilterParameter";
		
		/**
		 * 构造函数
		 */
		public function FilterParameter(object:Object=null)
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
		 * 设置
		 */
		public function set_attributeFilter(value:String):void
		{
			var realArgument:Array=[
				value+"$String"
			];
			var array:Object={
				action:"FIELD",
				isNew:true,
				key:this.KEY,
					functionName:"set_attributeFilter",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}