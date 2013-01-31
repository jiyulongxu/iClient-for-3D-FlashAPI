package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	/**
	 * 用来描述通过鼠标在三维场景内进行地物高度量算操作的类。
	 * （可以初始化，对外开放）
	 * 高度量算主要测量模型和地形的高度，对于二维图层高度始终为0。
	 */
	public class MeasureHeight extends SceneAction
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="MeasureHeight";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Action3Ds.MeasureHeight";
		/**
		 * 初始化 MeasureHeight 类的新实例
		 * 
		 * @param sceneControl 与 MeasureHeight 联动的三维场景控件（SuperMap.Web.UI.Controls.SceneControl类型）
		 * 
		 */
		public function MeasureHeight(sceneControl:Object=null)
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