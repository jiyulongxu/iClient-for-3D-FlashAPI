package SuperMap.Web.Util
{
	import flash.events.Event;
	/**
	 * 
	 */
	public class CallBackEvent extends Event
	{
		public var data:Object;
		public function CallBackEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false,data:Object=null)
		{
			super(type, bubbles, cancelable);
			this.data=data;
		}
		/**
		 * 克隆
		 */
		override public function clone():Event
		{
			return new CallBackEvent(type,bubbles,cancelable,data);
		}
	}
}