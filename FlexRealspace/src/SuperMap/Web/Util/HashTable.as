package SuperMap.Web.Util
{
	/**
	 * 哈希表
	 */
	public class HashTable
	{
		private var array:Array;
		private var arraySize:Number;
		public function HashTable(size:Number)
		{
			arraySize=size;
			array=new Array();
			for( var i:Number=0;i<arraySize;i++)
			{
				array[i]=new SortedList();
			}
		}
		//通过key转换为在内部数组中存储的位置id
		private function hashFunc(key:Number):Number
		{
			return key%arraySize;
		}
		
		public function insert(link:Link):void
		{
			var key:Number=link.key;
			var hashKey:Number=hashFunc(key);
			array[hashKey].insert(link);
		}
		public function deleteFromKey(key:Number):void
		{
			var hashKey:Number=hashFunc(key);
			array[hashKey].deleteFromKey(key);
		}
		/**
		 * 查找
		 */
		public function find(key:Number):Link
		{
			var hashKey:Number=hashFunc(key);
			var link:Link=array[hashKey].find(key);
			return link;
		}
	}
}