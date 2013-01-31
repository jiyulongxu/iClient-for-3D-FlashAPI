package SuperMap.Web.Core
{
	/**
	 * 三维模型几何对象类
	 * （可以初始化，对外开放）
	 * 该类用于建立三维几何对象的模型，从而实现对三维几何对象进行渲染。
	 */
	public class GeoModel extends Geometry3D
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="GeoModel";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.GeoModel";
		/**
		 * 
		 */
		public function GeoModel(object:Object=null)
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
		 * 通过指定模型文件（3DS 或 SGM 类型）的 zip 包所在的服务器全路径来获取三维模型几何对象并渲染。
		 * Zip 包里只能有一个 sgm 或者 3ds 文件以及其匹配的纹理文件。
		 * 下载的文件放在 C:SuperMapSuperMap iClient 6RSuperMap iClient 6R for RealspaceBin esourcedownloads[filename] 文件夹下。
		 * @param strPathURL 存放模型文件的服务器 URL。
		 * @return 模型下载成功返回 true，否则返回 false。
		 */
		public function fromModelFile(strPathURL:String):Boolean
		{
			var realArgument:Array=[strPathURL+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"fromModelFile",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
	}
}