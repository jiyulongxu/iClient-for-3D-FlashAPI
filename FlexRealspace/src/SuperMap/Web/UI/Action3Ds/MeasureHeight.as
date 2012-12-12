package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	/**
	 * 用来描述通过鼠标在三维场景内进行地物高度量算操作的类。
	 * 高度量算主要测量模型和地形的高度，对于二维图层高度始终为0。
	 */
	public class MeasureHeight extends SceneAction
	{
		public var CLASSNAME:String="MeasureHeight";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Action3Ds.MeasureHeight";
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