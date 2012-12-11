package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维向量类
	 * 向量是三维系统中一个重要概念，它是一个既有大小又有方向的量。
	 * 由于在三维场景中，地物具有了方向性，因此我们通过向量来表示地物的方向。
	 * 例如 BoundingBox 就由三维向量对象构造而成。
	 */
	public class Vector3D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Vector3D";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Vector3D";
		
		
		public function Vector3D(x:Object=0,y:Number=0,z:Number=0)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(x is Number)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					x.toString()+"$Number",
					y.toString()+"$Number",
					z.toString()+"$Number"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=x["key"] as Number;
				isNew=x["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
	}
}