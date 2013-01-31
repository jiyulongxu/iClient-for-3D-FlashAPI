package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	import SuperMap.Web.Util.CallBackEvent;

	
	/**
	 * 用来描述通过鼠标进行三维场景漫游操作的类。
	 * （可以初始化，对外开放）
	 * 漫游操作包括平移、缩放、倾斜和旋转操作。
	 */
	public class Pan extends SceneAction
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Pan";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Action3Ds.Pan";
		/**
		 * 初始化 Pan 类的新实例
		 * 
		 * @param sceneControl 与 Pan 联动的三维场景控件（SuperMap.Web.UI.Controls.SceneControl类型）
		 * 
		 */
		public function Pan(sceneControl:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(sceneControl is SceneControl)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					sceneControl.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=sceneControl["key"] as Number;
				isNew=sceneControl["isNew"] as Boolean;
			}
			super(sceneControl,key,isNew,array);
		}
		
	}
}