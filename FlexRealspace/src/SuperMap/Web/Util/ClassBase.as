package SuperMap.Web.Util
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	/**
	 * 基类
	 */
	public class ClassBase extends EventDispatcher
	{
		/**
		 * 每一个类都有自己的不可变的key，在类初始化的时候进行生成
		 */
		public var KEY:Number;
		/**
		 * 用于确认是否需要向js端发送类初始化消息
		 * 此参数可以判断对象时new出来的还是其他对象的方法生成的
		 */
		public var isNew:Boolean;
		/**
		 * 构造函数
		 */
		public function ClassBase(key:Number=0,isNew:Boolean=true,array:Object=null)
		{
			super();
			if(key!=0)
			{
				this.KEY=key;
			}
			else
			{
				this.KEY=this.getSoleKey();
			}
			this.isNew=isNew;
			
			//存起来
			ApplicationManager.addObject(this);
			
			if(isNew)
			{
				//初始化不需要返回值
				var arrayNew:Object={
					action:"CLASS",
					isNew:this.isNew,
						key:this.KEY,
						className:array["className"],
						realArgument:array["realArgument"]
				};
				
				this.flexToJsCall(arrayNew);
			}
		}
		/**
		 * 获取一个唯一的key
		 */
		public function getSoleKey():Number
		{
			return ApplicationManager.createKEY();
		}
		
		/**
		 * 所有从js返回的操作都从这个方法出来
		 */
		public function jsToFlexcallback(event:String,array:Object):void
		{
			//回调函数转移给如下方法处理
			this.callback(event,array);
		}
		/**
		 * 所有类向js发送操作都从基类这个方法进入
		 */ 
		public function flexToJsCall(array:Object):Object
		{
			return ApplicationManager.flexToJs(array);
		}
		
		
		
		/**
		 * 回调函数处理的方法，需要每个子类重写
		 */
		protected function callback(event:String,array:Object):void
		{
		}
	}
}