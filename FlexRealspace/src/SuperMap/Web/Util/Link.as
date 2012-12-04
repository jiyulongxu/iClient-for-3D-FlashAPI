package SuperMap.Web.Util
{
	/**
	 * 链表节点类
	 */
	public class Link
	{
		/**
		 * 链表节点的key，唯一标示
		 */
		public var key:Number;
		/**
		 * 链表节点的数据
		 */
		public var value:Object;
		/**
		 * 指向下一个链表节点（自动的）
		 */
		public var next:SuperMap.Web.Util.Link;
		
		/**
		 * 构造函数
		 * <p>key：链表节点的key，唯一标示
		 * <p>object：链表节点的数据
		 */
		public function Link(key:Number,value:Object)
		{
			this.key=key;
			this.value=value;
		}
	}
}