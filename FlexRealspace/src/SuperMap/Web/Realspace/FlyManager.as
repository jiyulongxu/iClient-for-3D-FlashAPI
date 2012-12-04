package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维场景的飞行管理类。
	 * 该类作为 Scene 类的属性，当指定飞行路线后就可以开始飞行了，此时可以通过暂停、停止来控制当前飞行状态。
	 * 该类不能被创建，只能通过场景获取 Scene.get_flyManager()。
	 */
	public class FlyManager extends ClassBase
	{
		public var CLASSNAME:String="FlyManager";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyManager";
		
		public function FlyManager(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
	}
}