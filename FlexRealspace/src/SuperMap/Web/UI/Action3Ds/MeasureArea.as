package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	/**
	 * 用来描述通过鼠标在三维场景内进行面积量算操作的类。
	 */
	public class MeasureArea extends SceneAction
	{
		public var CLASSNAME:String="MeasureArea";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Action3Ds.MeasureArea";
		public function MeasureArea(sceneControl:Object=null)
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