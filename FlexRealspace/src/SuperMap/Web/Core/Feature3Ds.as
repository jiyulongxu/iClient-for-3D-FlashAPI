package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维地理要素类集合
	 * 三维要素集合类不单纯是三维要素对象的集合，它是树状结构，也就是说三维要素集合对象还可以包含子对象，
	 * 子对象也是三维要素集合类的对象。因此，一个三维要素集合对象可以包括零个或多个子对象和零个或多个三维要素对象。
	 */
	public class Feature3Ds extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Feature3Ds";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core..Feature3Ds";
		/**
		 * 初始化 Feature3Ds 类的新实例。
		 *  @example 
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Feature3Ds(object:Object=null)
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
		 * 根据指定查找方式查找指定要素对象。
		 * @param index 按要素对象的 ID 号（Number类型）或名字（String类型）查找要素对象。
		 * @param option 要素对象的查找方式常量，分为 AllFeatures 和 TopFeaturesOnly。Feature3DSearchOption 枚举,
		 * AllFeatures 遍历主干和分支中所有对象进行查找；TopFeaturesOnly 表示只遍历主干中的对象进行查找。
		 * @return 返回要素对象
		 */
		public function findFeature3D(index:Object,option:Number):Feature3D
		{
			var realArgument:Array;
			if(index is Number)
			{
				realArgument=[index.toString()+"$Number",option.toString()+"$Number"];
			}
			else if(index is String)
			{
				realArgument=[index.toString()+"$String",option.toString()+"$Number"];
			}
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"findFeature3D",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Feature3D;
		}
	}
}