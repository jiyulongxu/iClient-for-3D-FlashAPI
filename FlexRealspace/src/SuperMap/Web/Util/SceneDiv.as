package SuperMap.Web.Util
{
	
	import flash.events.Event;
	import flash.external.ExternalInterface;
	
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	
	public class SceneDiv extends Group
	{
		/**
		 * 在js端对应的类的全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Util.SceneDiv";
		public function SceneDiv()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE,flexToJsNew);
		}
		private var isNew:Boolean=true;
		public const KEY:Number=ApplicationManager.createKEY();
		private var projectName:String;
		private function flexToJsNew(event:Event):void
		{
			
			
			//获取当前项目的名称
			this.projectName=this.parentApplication.id;
			ApplicationManager.initApp();
			ApplicationManager.addObject(this);
			
			ApplicationManager.flexToJs(this.getInformationArray());
		}
		private function getInformationArray():Object
		{
			var realArgument:Array=[
				this.id+"$String",
				this.projectName+"$String",
				this.x.toString()+"$Number",
				this.y.toString()+"$Number",
				this.width.toString()+"$Number",
				this.height.toString()+"$Number"
			];
			var array:Object={
				action:"CLASS",
				isNew:this.isNew,
					key:this.KEY,
					className:this.REALSPACE_CLASSNAME,
					realArgument:realArgument	
			};
			return array;
		}
		public var CLASSNAME:String="SceneDiv";
	}
}