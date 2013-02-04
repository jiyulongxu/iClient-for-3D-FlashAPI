package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 图层服务列表信息类。
	 * （不可以初始化，对外开放）
	 * 该类主要用于获取服务端发布的全部三维图层集合服务及其三维图层集合中的各个图层的信息。
	 * 需要注意的是该类只获取了有哪些三维图层服务，而不负责具体数据的加载。
	 * 该类不可创建，只能通过 SceneControl.get_layer3DServiceInfo获取。
	 */
	public class Layer3DServicesList extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3DServicesList";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3DServicesList";
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //指定场景的服务器地址 
		 * var sceneServerAddress:String = "http://localhost:8090/iserver/services/components-rest/rest/realspace"; 
		 * //获取一个三维图层信息列表对象实例 
		 * var layer3DServicesList:Layer3DServicesList = sceneControl.get_layer3DServicesList(); 
		 * //从指定的服务器获取名称为“SceneName”的场景的全部图层服务信息，获取成功返回 True
		 * var bLoad:Boolean = layer3DServicesList.load(sceneServerAddress,"scene");  
		 * //获取图层集合的服务地址
		 * var layer3DServicesListServerAddress:String=layer3DServicesList.get_serverRootAddress();
		 * //获取所属场景服务的名称
		 * var layer3DServicesListSceneName:String=layer3DServicesList.get_sceneName();
		 * //该场景提供的图层服务信息的总数 
		 * var count:Number = layer3DServicesList.get_count();
		 * //获取第一个三维图层服务信息
		 * var layer3DServiceInfo:Layer3DServiceInfo = layer3DServicesList.get_item(0);
		 * </listing>
		 */
		public function Layer3DServicesList(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		/**
		 * 获取指定场景的图层集合服务列表。
		 * @param strServerRootUrl 指定三维场景的服务器地址。 
		 * @param strSceneName 通过场景名称，指定要从哪个场景中获取图层服务列表。
		 * @return 如果图层服务列表获取成功返回 True, 否则返回 False。
		 */
		public function load(strServerRootUrl:String,strSceneName:String):Boolean
		{
			var realArgument:Array=[strServerRootUrl+"$String",strSceneName+"$String"];
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
		 * 删除图层服务集合中所有图层服务信息。
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
		 * 获取图层集合中图层服务的总数。
		 * @return 返回图层集合中图层服务的总数
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
		 * 获取三维图层集合中指定图层索引号（Number 类型）或者名称（String 类型）的三维图层服务信息。
		 * @param object 可以为Number类型（代表第几个场景，从0开始），也可以为String 类型（代表场景的名称）
		 * @return 返回三维图层服务信息
		 */
		public function get_item(object:Object):Layer3DServiceInfo
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
			return this.flexToJsCall(array) as Layer3DServiceInfo;
		}
		/**
		 * 获取所属场景服务的名称。
		 * @return 返回所属场景服务的名称
		 */
		public function get_sceneName():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sceneName",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置所属场景服务的名称。
		 * @param value 需要设置的所属场景服务的名称
		 */
		public function set_sceneName(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_sceneName",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取图层集合的服务地址。
		 * @return 返回图层集合的服务地址
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
		 * 设置图层集合的服务地址。
		 * @param value 需要设置的图层集合的服务地址
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