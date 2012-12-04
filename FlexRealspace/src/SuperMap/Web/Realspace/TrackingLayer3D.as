package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 跟踪图层类
	 */
	public class TrackingLayer3D extends ClassBase
	{
		public var CLASSNAME:String="TrackingLayer3D";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.TrackingLayer3D";
		public function TrackingLayer3D(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}