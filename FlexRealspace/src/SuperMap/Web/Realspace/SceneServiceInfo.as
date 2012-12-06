package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 场景服务信息类
	 * 该类主要用于记录服务端发布的场景服务信息。图层依赖于场景，要加载图层首先需要指定一个场景。
	 * 该类不可创建，只能通过 SceneServicesList.get_item(index) 获取。
	 */
	public class SceneServiceInfo extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="SceneServiceInfo";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.SceneServiceInfo";
		
		public function SceneServiceInfo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取场景服务名称。
		 */
		public function get_name():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置场景服务名称。
		 */
		public function set_name(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_name",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取场景所属服务器地址。
		 */
		public function get_serverRootAddress():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_serverRootAddress",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置场景所属服务器地址。
		 */
		public function set_serverRootAddress(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_serverRootAddress",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}