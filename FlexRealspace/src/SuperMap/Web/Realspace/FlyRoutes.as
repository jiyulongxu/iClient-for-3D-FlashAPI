package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	
	public class FlyRoutes extends ClassBase
	{
		public var CLASSNAME:String="FlyRoutes";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyRoutes";
		
		public function FlyRoutes(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}