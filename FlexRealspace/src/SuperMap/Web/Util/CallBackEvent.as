package SuperMap.Web.Util
{
	import flash.events.Event;
	/**
	 * 回调事件信息类
	 * （可初始化，不对外开放）
	 * 所有回调事件触发时，CallBackEvent对象将作为参数传递给事件侦听器。
	 */
	public class CallBackEvent extends Event
	{
		/**
		 * 三维场景控件初始化成功的回调事件
		 * 
		 */
		public static const EVENT_succeedCallback:String="succeedCallback";
		/**
		 * 三维场景控件初始化失败的回调事件
		 */
		public static const EVENT_failedCallback:String="failedCallback";
		/**
		 * 地物被选择事件
		 */
		public static const EVENT_objectSelected:String="objectSelected";
		/**
		 * 执行距离量算和依地距离量算事件
		 */
		public static const EVENT_measureDistance:String="measureDistance";
		/**
		 * 执行面积量算事件
		 */
		public static const EVENT_measureArea:String="measureArea";
		/**
		 * 执行高度量算事件
		 */
		public static const EVENT_measureHeight:String="measureHeight";
		/**
		 * 距离量算和依地距离量算结束事件
		 */
		public static const EVENT_measureDistanceFinished:String="measureDistanceFinished";
		/**
		 * 面积量算结束事件
		 */
		public static const EVENT_measureAreaFinished:String="measureAreaFinished";
		/**
		 * 高度量算结束事件
		 */
		public static const EVENT_measureHeightFinished:String="measureHeightFinished";
		/**
		 * 飞行结束事件
		 */
		public static const EVENT_flownEnd:String="flownEnd";
		/**
		 * 绘制区域事件
		 */
		public static const EVENT_addExcavationRegion:String="addExcavationRegion";
		/**
		 * 气泡初始化事件
		 */
		public static const EVENT_bubbleInitialize:String="bubbleInitialize";
		/**
		 * 气泡移动事件
		 */
		public static const EVENT_bubbleResize:String="bubbleResize";
		/**
		 * 气泡关闭事件
		 */
		public static const EVENT_bubbleClose:String="bubbleClose";
		/**
		 * 存储的数据，在回调函数中使用，记录事件的相关信息
		 */
		public var data:Object;
		/**
		 * 回调事件信息类构造函数
		 * @param type 事件的类型。
		 * @param bubbles 确定 CallBackEvent 对象是否参与事件流的冒泡阶段。默认值为 false。
		 * @param cancelable 确定是否可以取消 CallBackEvent 对象。默认值为 false。
		 * @param data  CallBackEvent 对象存储的信息。
		 * 
		 */
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