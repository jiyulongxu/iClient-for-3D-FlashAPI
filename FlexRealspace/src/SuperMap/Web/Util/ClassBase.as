package SuperMap.Web.Util
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.getTimer;

	/**
	 * 基类
	 * （不可初始化，不对外开放）
	 * 用户使用的所有三维方面的类都必须直接或间接的继承于此类
	 */
	public class ClassBase extends EventDispatcher
	{
		/**
		 * 唯一标示对象的键值，在对象初始化的时候自动进行生成
		 */
		public var KEY:Number;
		/**
		 * 用于确认是否需要向js端发送类初始化消息
		 * 此参数可以判断对象是new出来的还是其他对象的方法生成的
		 */
		public var isNew:Boolean;
		/**
		 * 基类构造函数
		 * @param key 唯一标示的对象的键值
		 * @param isNew 是否需要向js发送初始化对象的消息
		 * @param array 记录对象部分初始化的信息的键值对
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
		 * @return 返回一个内存中不存在的位移key
		 */
		public function getSoleKey():Number
		{
			return ApplicationManager.createKEY();
		}
		
		/**
		 * 监听所有js 端的回调函数
		 * @param event 回调事件的类型
		 * @param array 记录回调的所有信息
		 */
		public function jsToFlexcallback(event:String,array:Object):void
		{
			//回调函数转移给如下方法处理
			this.callback(event,array);
		}
		/**
		 * 向js端发送信息
		 * 所有类向js发送操作都从基类这个方法进入
		 * @param array 记录发送信息的键值对
		 * @return array 返回的信息的键值对
		 */ 
		public function flexToJsCall(array:Object):Object
		{
			return ApplicationManager.flexToJs(array);
		}
		/**
		 * 将普通的数组进行包装，转换为可传递给js端的自定义数组
		 * 一维按照数组形式不变，二维开始都转换为字符串形式
		 * @param array 需要转换的数组
		 * @return 返回转换成功的数组
		 */
		public function wrapArray(array:Array):Array
		{
			var result:Array;
			for(var i:Number=0;i<array.length;i++)
			{
				result[i]=this.objectToString(array[i]);
			}
			return result;
		}
		/**
		 * 将对象转换为有标示符的字符串
		 * 支持数组转换
		 * @param object 需要转换的对象
		 * @return 返回转换成功的字符串
		 */
		public function objectToString(object:Object):String
		{
			var result:Object;
			var type:String=typeof(object);
			switch(type)
			{
				case "undefined":
				{
					break;
				}
				case "string":
				{
					result='"'+(object as String)+'$String"';
					break;
				}
				case "number":
				{
					result='"'+(object as Number).toString()+'$Number"';
					break;
				}
				case "boolean":
				{
					result='"'+(object as Boolean).toString()+'$Boolean"';
					break;
				}
				case "object":
				{
					if(object is Array)
					{
						var myArray:Array=(object as Array);
						for(var i:Number=0;i<myArray.length;i++)
						{
							if((i==0)&&(myArray.length!=1))
							{
								myArray[i]="["+this.objectToString(myArray[i]);
							}
							else if((i==0)&&(myArray.length==1))
							{
								myArray[i]="["+this.objectToString(myArray[i])+"]";
							}
							else if(i==myArray.length-1)
							{
								myArray[i]=this.objectToString(myArray[i])+"]";
							}
							else
							{
								myArray[i]=this.objectToString(myArray[i]);
							}
						}
						result=myArray;
					}
					else if(object is Date)
					{
						var resultTime:Date=object as Date;
						var str:String='"'+resultTime.time.toString()+'$Date"';
						result= str;
					}
					else
					{
					}
					break;
				}
			}
			return result.toString();
		}
		
		/**
		 * 所有回调函数处理的方法，需要每个子类重写才能拥有回调函数
		 * @param event 回调事件类型
		 * @param array 记录回调的所有信息
		 */
		protected function callback(event:String,array:Object):void
		{
		}
	}
}