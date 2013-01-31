package SuperMap.Web.Util
{
	/**
	 * 哈希表
	 * （可初始化，不对外公开）
	 */
	public class HashTable
	{
		/**
		 * 存储有序链表的数组
		 */
		private var array:Array;
		/**
		 * 记录数组的大小
		 */
		private var arraySize:Number;
		/**
		 * 哈希表构造函数
		 * @param size 哈希表的大小
		 * 
		 * @example 以下例子示范了如何创建一个哈希表，并且进行增删查的操作
		 * <listing>
		 * 
		 * //创建三个链表节点对象，key不能有重复的，三个对象里面存储的都是一个Date对象
		 * var link1:SuperMap.Web.Util.Link=new SuperMap.Web.Util.Link(10001,new Date());
		 * var link2:SuperMap.Web.Util.Link=new SuperMap.Web.Util.Link(10002,new Date());
		 * var link3:SuperMap.Web.Util.Link=new SuperMap.Web.Util.Link(10003,new Date());
		 * //创建一个大小为10的哈希表，但是不代表哈希表只能存储10个链表节点，哈希表理论上可以存储无限多的链表节点
		 * //哈希表的大小以及实际应用中数据的量影响哈希表查询的效率
		 * var hashTable:SuperMap.Web.Util.HashTable=new SuperMap.Web.Util.HashTable(10);
		 * //将创建的三个链表对象添加进哈希表
		 * hashTable.insert(link1);
		 * hashTable.insert(link2);
		 * hashTable.insert(link3);
		 * //通过10002这个key查询链表节点
		 * var link:SuperMap.Web.Util.Link=hashTable.find(10002);
		 * //通过10002这个key删除链表节点
		 * hashTable.deleteFromKey(10002);
		 * //在此查询之前的对象，返回null
		 * var link:SuperMap.Web.Util.Link=hashTable.find(10002);
		 * 
		 * </listing>
		 */
		public function HashTable(size:Number)
		{
			arraySize=size;
			array=new Array();
			for( var i:Number=0;i<arraySize;i++)
			{
				array[i]=new SortedList();
			}
		}
		/**
		 * 通过链表节点的key转换为在内部数组中存储的位置id
		 * @param key 链表节点的key
		 */
		private function hashFunc(key:Number):Number
		{
			return key%arraySize;
		}
		/**
		 * 向哈希表中插入一个链表节点
		 * @param link 需要插入的链表节点
		 */
		public function insert(link:Link):void
		{
			var key:Number=link.key;
			var hashKey:Number=hashFunc(key);
			array[hashKey].insert(link);
		}
		/**
		 * 根据链表节点的key在哈希表内部删除此链表节点
		 * @param key 链表节点的key
		 */
		public function deleteFromKey(key:Number):void
		{
			var hashKey:Number=hashFunc(key);
			array[hashKey].deleteFromKey(key);
		}
		/**
		 * 根据链表节点的key在哈希表内部查找此链表节点
		 * @param key 链表节点的key
		 * @return 查找到的链表节点
		 */
		public function find(key:Number):Link
		{
			var hashKey:Number=hashFunc(key);
			var link:Link=array[hashKey].find(key);
			return link;
		}
	}
}