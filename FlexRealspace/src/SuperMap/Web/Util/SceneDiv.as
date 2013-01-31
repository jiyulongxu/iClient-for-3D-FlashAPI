package SuperMap.Web.Util
{
	
	import flash.events.Event;
	import flash.external.ExternalInterface;
	
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	/**
	 * 场景界面控件类
	 * （可以初始化，对外开放）
	 * 可视化控件，可以通过设计器很方便的设计，对应js realspace里面的div，用于存放三维场景的界面控件容器
	 */
	public class SceneDiv extends Group
	{
		/**
		 * 用于对象的识别
		 */
		public var CLASSNAME:String="SceneDiv";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Util.SceneDiv";
		/**
		 * 是否需要向js发送初始化对象的消息
		 */
		private var isNew:Boolean=true;
		/**
		 * 唯一标示此对象的键值，初始化后会自动创建
		 */
		public const KEY:Number=ApplicationManager.createKEY();
		/**
		 * 记录当前项目的名称
		 */
		private var projectName:String;
		/**
		 * 场景界面控件类构造函数
		 */
		public function SceneDiv()
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE,flexToJsNew);
		}
		/**
		 * 初始化js API，并且发送消息，在js端创建div
		 */
		private function flexToJsNew(event:Event):void
		{
			//获取当前项目的名称
			this.projectName=this.parentApplication.id;
			ApplicationManager.initApp();
			//将此对象保存在内存中
			ApplicationManager.addObject(this);
			//
			ApplicationManager.flexToJs(this.getInformationArray());
		}
		/**
		 * 获取自身信息组合
		 * @return 返回自身信息的键值对
		 */
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
	}
}