package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 
	 */
	public class Feature3Ds extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Feature3Ds";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core..Feature3Ds";
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
		 * index ：按要素对象的 ID 号或名字查找要素对象。
		 * option ：要素对象的查找方式常量，分为 AllFeatures 和 TopFeaturesOnly。Feature3DSearchOption 枚举,
		 * AllFeatures 遍历主干和分支中所有对象进行查找；TopFeaturesOnly 表示只遍历主干中的对象进行查找。
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