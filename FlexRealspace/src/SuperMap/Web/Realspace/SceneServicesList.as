package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 场景服务列表信息类
	 * （不可以初始化，对外开放）
	 * 该类主要用于获取服务端发布的全部场景服务信息列表。
	 * 该类不可创建，只能通过 SceneControl.get_sceneServicesList() 获取。
	 */
	public class SceneServicesList extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="SceneServicesList";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.SceneServicesList";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //场景的服务器地址
		 * var serverAddress:String = "http://localhost:8090/iserver/services/components-rest/rest/realspace";
		 * //创建一个 SceneServicesList 对象实例
		 * var sceneServicesList:SceneServicesList = sceneControl.get_sceneServicesList();
		 * //获取场景服务列表信息，成功获取返回 True
		 * var bLoad:Boolean = sceneServicesList.load(serverAddress);  
		 * //获取提供场景服务列表的服务器地址
		 * var address:String = sceneServicesList.get_serverRootAddress(); 
		 * //场景服务的总数
		 * var count:Number = sceneServicesList.get_count();
		 * //获取第一个场景服务信息
		 * var sceneServiceInfo:SceneServiceInfo = sceneServicesList.get_item(0);
		 * </listing>
		 */
		public function SceneServicesList(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取所有场景服务列表。
		 * @param strServerRootUrl 提供三维场景服务列表的服务器地址。
		 * @return 如果场景列表获取成功返回 True, 否则返回 False。
		 */
		public function load(strServerRootUrl:String):Boolean
		{
			var realArgument:Array=[strServerRootUrl+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"load",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 删除场景服务列表中所有场景服务信息。
		 */
		public function removeAll():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"removeAll",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取场景列表中场景服务的总数。
		 * @return 返回场景列表中场景服务的总数
		 */
		public function get_count():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_count",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 获取场景列表中指定场景索引号（Number 类型）或者名称（String 类型）的场景服务信息 SceneServiceInfo。
		 * @param object 可以为Number类型（代表第几个场景，从0开始），也可以为String 类型（代表场景的名称）
		 * @return 返回场景服务信息
		 */
		public function get_item(object:Object):SceneServiceInfo
		{
			var realArgument:Array;
			if(object is Number)
			{
				realArgument=[object.toString()+"$Number"];
			}
			else if(object is String)
			{
				realArgument=[object.toString()+"$String"];
			}
			
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as SceneServiceInfo;
		}
		/**
		 * 获取提供场景服务列表的服务器地址。
		 * @return 返回提供场景服务列表的服务器地址
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
	}
}