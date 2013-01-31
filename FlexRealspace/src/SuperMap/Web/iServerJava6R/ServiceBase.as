package SuperMap.Web.iServerJava6R
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 服务基类。
	 * （不可以初始化，对外开放）
	 */
	public class ServiceBase extends ClassBase
	{
		
		/**
		 * 构造函数
		 * @param url （String类型）
		 * @param key 此对象的唯一标示
		 * @param isNew 是否需要往js端发送消息
		 * @param array 记录属性的键值对
		 */
		public function ServiceBase(url:Object=null,key:Number=0,isNew:Boolean=true,array:Object=null)
		{

			super(key,isNew,array);
		}
	}
}