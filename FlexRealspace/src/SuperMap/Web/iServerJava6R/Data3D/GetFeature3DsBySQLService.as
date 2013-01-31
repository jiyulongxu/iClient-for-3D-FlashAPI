package SuperMap.Web.iServerJava6R.Data3D
{
	import SuperMap.Web.Util.CallBackEvent;
	import SuperMap.Web.iServerJava6R.ServiceBase;
	/**
	 * 查询成功事件
	 */
	[Event(name="processCompleted", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * 查询失败事件
	 */
	[Event(name="processFailed", type="SuperMap.Web.Util.CallBackEvent")]
	/**
	 * SQL 查询服务类
	 * （可以初始化，对外开放）
	 */
	public class GetFeature3DsBySQLService extends ServiceBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GetFeature3DsBySQLService";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsBySQLService";
		/**
		 * @param url SQL 查询服务的url地址（String类型）
		 */
		public function GetFeature3DsBySQLService(url:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(url is String)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					url.toString()+"$String"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=url["key"] as Number;
				isNew=url["isNew"] as Boolean;
			}
			super(url, key, isNew, array);
		}
		/**
		 * 发送查询请求。
		 * @param parameter 查询参数
		 */
		public function processAsync(parameter:GetFeature3DsBySQLParameters):void
		{
			
			var realArgument:Array=[parameter.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"processAsync",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取查询结果。
		 * @return 返回查询结果
		 */
		public function get_lastResult(): GetFeature3DsResult
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_lastResult",
					isReturn:true
			};
			return this.flexToJsCall(array) as  GetFeature3DsResult;
		}
		/**
		 * 添加查询完成时执行的回调函数。
		 * @param handler 回调函数
		 */
		public function add_processCompleted(handler:Function):void
		{
			addEventListener("processCompleted",handler);
			var realArgument:Array=["processCompleted$Function"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"add_processCompleted",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 移除查询完成时执行的回调函数。
		 * @param handler 回调函数
		 */
		public function remove_processCompleted(handler:Function):void
		{
			removeEventListener("processCompleted",handler);
		}
		/**
		 * 添加查询失败时执行的回调函数。
		 * @param handler 回调函数
		 */
		public function add_processFailed(handler:Function):void
		{
			addEventListener("processFailed",handler);
			var realArgument:Array=["processFailed$Function"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"add_processFailed",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 移除查询失败时执行的回调函数。
		 * @param handler 回调函数
		 */
		public function remove_processFailed(handler:Function):void
		{
			removeEventListener("processFailed",handler);
		}
		/**
		 * 重写基类的回调函数
		 * 此方法主要作用在于按照传回来的参数分发给此对象里面应该来处理的外部方法，
		 * 并且将需要的数据传给此方法
		 * @param event 事件类型，用于回调后绑定外部处理函数
		 * @param array 回调的数据，提供给外部函数使用
		 */
		override protected function callback(event:String,array:Object):void
		{
			dispatchEvent(new CallBackEvent(event,false,false,array));
		}
	}
}