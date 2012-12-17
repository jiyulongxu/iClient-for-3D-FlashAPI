package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维点集合对象
	 * 该类管理线、面对象或其子对象上的所有节点。由于线、面对象或其子对象都是有向的，所以其点集合对象为有序的点的集合。
	 */
	public class Point3Ds extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Point3Ds";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Point3Ds";
		/**
		 * 构造函数
		 */
		public function Point3Ds(object:Object=null)
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
		 * 获取集合中指定索引的三维点对象。例如获取集合中所引值为1的三维点对象，即 Point3Ds.get_item(1)。  
		 */
		public function get_item(nIndex:Number):Point3D
		{
			var realArgument:Array=[
				nIndex.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Point3D;
		}
		/**
		 * 获取三维点对象集合中 Point3D 对象的个数。
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
	}
}