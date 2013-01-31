package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	import flash.utils.getDefinitionByName;
	
	/**
	 * 三维选择集类
	 * （不可以初始化，对外开放）
	 * 该类为三维场景中被选中的矢量对象的集合，支持对选择集中对象的操作，例如返回选中对象的 ID 值、高亮显示地物等。
	 * 目前选择集支持 KML、Model、矢量 对象。该类不可创建，只能从 Layer3D.get_selection3D() 获取。
	 */
	public class Selection3D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Selection3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Selection3D";
		/**
		 * 
		 */
		public function Selection3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取三维选择集中对象的总数。
		 * @return 返回三维选择集中对象的总数
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
		 * 获取三维选择集对象所属的图层。
		 * @return 返回三维选择集对象所属的图层
		 */
		public function get_layer3D():Layer3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_layer3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as Layer3D;
		}
		/**
		 * 获取三维选择集中指定序号的对象的 ID 值。
		 * @param index 如果该对象为 KML 及矢量对象，其 ID 为数据集中属性数据SmID 字段值；
		 * 如果该对象为 Model 对象，其 ID 则为对象在数据集中的 ID 值。
		 * @return 返回ID值
		 */
		public function get_item(index:Number):Number
		{
			var realArgument:Array=[index.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Number;
		}
	}
}