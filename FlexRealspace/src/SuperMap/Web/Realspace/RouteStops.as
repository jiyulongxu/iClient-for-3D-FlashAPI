package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	
	public class RouteStops extends ClassBase
	{
		public var CLASSNAME:String="RouteStops";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.RouteStops";
		public function RouteStops(object:Object=null)
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
	}
}