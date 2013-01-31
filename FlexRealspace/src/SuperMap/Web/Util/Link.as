package SuperMap.Web.Util
{
	/**
	 * 链表节点类
	 * 用于在内存中存储一个任意对象
	 * （可初始化，不对外公开）
	 */
	public class Link
	{
		/**
		 * 链表节点的key，存储对象的唯一标示
		 */
		public var key:Number;
		/**
		 * 链表节点记录的对象
		 */
		public var value:Object;
		/**
		 * 指向另一个链表节点
		 */
		public var next:SuperMap.Web.Util.Link;
		
		/**
		 * 链表节点构造函数
		 * @param key 链表节点的key，存储对象的唯一标示
		 * @param object 链表节点的数据，需要存储的数据
		 */
		public function Link(key:Number,value:Object)
		{
			this.key=key;
			this.value=value;
		}
	}
}