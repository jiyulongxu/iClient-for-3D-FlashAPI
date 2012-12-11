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
		 * point3Ds：三维地理坐标点对数组。
		 */
		public function Point3Ds(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object!=null)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					object.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
	}
}