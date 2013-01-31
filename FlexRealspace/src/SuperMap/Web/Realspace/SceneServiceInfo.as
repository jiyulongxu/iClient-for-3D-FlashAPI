package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 场景服务信息类
	 * （不可以初始化，对外开放）
	 * 该类主要用于记录服务端发布的场景服务信息。图层依赖于场景，要加载图层首先需要指定一个场景。
	 * 该类不可创建，只能通过 SceneServicesList.get_item(index) 获取。
	 */
	public class SceneServiceInfo extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="SceneServiceInfo";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.SceneServiceInfo";
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
		 * if (bLoad)
		 * 	{
		 * 		//创建一个数组
		 * 		var sceneInfo:Array = new Array();
		 * 		//循环列表
		 * 		for(var i:Number=0; i《count; i++)
		 * 		{
		 * 			//将每个场景的名字、服务器地址存入数组 sceneInfo
		 * 			var sceneServiceInfo:SceneServiceInfo = sceneServicesList.get_item(i);
		 * 			var sceneNameAddress:Array = new Array();
		 * 			sceneNameAddress[0]=sceneServiceInfo.get_name();
		 * 			sceneNameAddress[1]=sceneServiceInfo.get_serverRootAddress();
		 * 			sceneServiceInfo.set_serverRootAddress("地址");
		 * 			sceneNameAddress[2]=sceneServiceInfo.get_serverRootAddress();
		 * 			sceneInfo.push(sceneNameAddress);
		 * 		}
		 * 	}
		 * </listing>
		 */
		public function SceneServiceInfo(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 获取场景服务名称。
		 * @return 返回场景服务名称
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
		 * @param value 需要设置的场景服务名称
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
		 * @return 返回场景所属服务器地址
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
		 * @param value 需要设置的场景所属服务器地址
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