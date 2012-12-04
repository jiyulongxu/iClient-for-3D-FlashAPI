package SuperMap.Web.Core
{
	/**
	 * 三维模型几何对象类
	 * 该类用于建立三维几何对象的模型，从而实现对三维几何对象进行渲染。
	 */
	public class GeoModel extends Geometry3D
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GeoModel";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.GeoModel";
		
		public function GeoModel(object:Object=null)
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
	}
}