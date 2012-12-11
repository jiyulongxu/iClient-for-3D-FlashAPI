package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 包围盒类
	 * 该类用于描述三维要素的最小外接立方体，即三维要素的空间地理范围。
	 */
	public class BoundingBox extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="BoundingBox";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.BoundingBox";
		/**
		 * 构造函数
		 * lower：包围盒的最小点，即 x、y、z 坐标都为最小值的点。
		 * upper：包围盒的最大点，即 x、y、z 坐标都为最大值的点。 
		 */
		public function BoundingBox(lower:Object=null,upper:Vector3D=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(lower is Vector3D)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					lower.KEY.toString()+"$Object",
					upper.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=lower["key"] as Number;
				isNew=lower["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
	}
}