package SuperMap.Web.Util
{
	/**
	 * 有序链表类
	 * 
	 */
	public class SortedList
	{
		//裁判第一个列表项
		private var first:Link;
		/**
		 * 构造函数
		 */
		public function SortedList()
		{
			first=null;
		}
		/**
		 * 插入一个链表节点
		 * <p>link：Link 需要插入的链表节点<p>
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
		 * 根据键值删除链表内部的数据
		 * <p>key：Number
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
		 * 根据key查找需要的链表节点
		 * <p>key：Number 
		 * <p>return：Link 
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