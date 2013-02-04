package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * WMTS图层服务列表类
	 * （可以初始化，对外开放）
	 */
	public class Layer3DWMTSServicesList extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3DWMTSServicesList";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3DWMTSServicesList";
		/**
		 * 构造函数
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Layer3DWMTSServicesList(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object==null)
			{
				key=0;
				isNew=true;
				array={
					className:this.REALSPACE_CLASSNAME
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 获取指定地址的WMTS图层服务列表
		 * @param strServerRootUrl 服务器地址 
		 * @return 如果图层服务列表获取成功返回 True, 否则返回 False。
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
		 * 获取图层列表中图层服务数目。
		 * @return 返回图层列表中图层服务数目
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
		 * 获取指定索引的图层服务信息
		 * @param index 索引值
		 * @return 返回图层服务信息
		 */
		public function get_item(index:Number):Layer3DWMTSServiceInfo
		{
			var realArgument:Array=[index.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_item",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Layer3DWMTSServiceInfo;
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
	}
}