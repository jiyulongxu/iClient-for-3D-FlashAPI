package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 太阳对象类
	 */
	public class Sun extends ClassBase
	{
		public var CLASSNAME:String="Sun";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Sun";
		public function Sun(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}