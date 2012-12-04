package SuperMap.Web.Util
{
	import flash.events.Event;
	
	public class CallBackEvent extends Event
	{
		public static const EVENT_NAME_SUCCEED:String="succeedCallback";
		public static const EVENT_NAME_FAILED:String="failedCallback";
		public var data:Object;
		public function CallBackEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false,data:Object=null)
		{
			super(type, bubbles, cancelable);
			this.data=data;
		}
		override public function clone():Event
		{
			return new CallBackEvent(type,bubbles,cancelable,data);
		}
	}
}