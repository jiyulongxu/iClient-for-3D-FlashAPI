package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.Enum;
	/**
	 * 飞行状态枚举类。
	 */
	public class FlyStatus extends Enum
	{
		/**
		 * 当前飞行状态为暂停，设置 Play 可以按照当前的所有设置继续飞行。
		 */
		public static const FPAUSE:Number=1;
		/**
		 * 当前飞行状态为正在飞行中，可以在暂停后设置飞行状态类型为 Play 继续飞行。
		 */
		public static const FPLAY:Number=2;
		/**
		 * 当前飞行状态为已经停止。
		 */
		public static const FSTOP:Number=0;
		public function FlyStatus()
		{
			super();
		}
	}
}