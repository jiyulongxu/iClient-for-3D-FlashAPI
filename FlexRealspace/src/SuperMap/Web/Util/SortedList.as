package SuperMap.Web.Util
{
	/**
	 * 有序链表类
	 * （可初始化，不对外公开）
	 */
	public class SortedList
	{
		/**
		 * 裁判第一个列表项
		 */
		private var first:Link;
		/**
		 * 有序链表构造函数
		 */
		public function SortedList()
		{
			first=null;
		}
		/**
		 * 向此链表节点后面插入一个链表节点
		 * @param link 需要插入的链表节点
		 */
		public function insert(link:Link):void
		{
			var key:Number=link.key;
			var previous:Link=null;
			var current:Link=first;
			while(current!=null && key!=current.key)
			{
				previous=current;
				current=current.next;
			}
			if(previous==null)
			{
				first=link;
			}
			else
			{
				previous.next=link;
			}
			link.next=current;
		}
		/**
		 * 根据键值删除链表节点，需要通过key判定是否为当前链表节点，如果不是，查找此链表节点后面的链表节点
		 * @param key 链表节点对象的key
		 */
		public function deleteFromKey(key:Number):void
		{
			var previous:Link=null;
			var current:Link=first;
			while(current!=null && key!=current.key)
			{
				previous=current;
				current=current.next;
			}
			if(previous==null)
			{
				first=first.next;
			}
			else
			{
				previous.next=current.next;
			}
		}
		/**
		 * 根据key查找链表节点，如果不是当前链表节点，会继续查找此链表节点后面的链表节点
		 * @param key 链表节点对象的key 
		 * @return 查找到的链表节点（如果没有找到返回null）
		 */
		public function find(key:Number):Link
		{
			var current:Link = first;
			while(current != null)
			{ 
				if(current.key == key) 
				{
					return current; 
				}
				current = current.next;
			}
			return null; 
		}
	}
}