package SuperMap.Web.Util
{
	
	import SuperMap.IncludeStream;
	
	import flash.external.ExternalInterface;
	import flash.utils.getDefinitionByName;
	/**
	 * 核心管理类
	 */
	public class ApplicationManager
	{
		public function ApplicationManager()
		{
		}
		public static var classHashTable:HashTable=new HashTable(10);
		/**
		 * flex端向js端发送信息的方法
		 */
		public static function flexToJs(object:Object):Object
		{
			var result:Object=ExternalInterface.call("SuperMap.Web.Util.ApplicationManager.initBridgeFlexToJs",object);
			
			return ApplicationManager.parseArguments(result);
		}
		/**
		 * 记录回调通道是否注册（只能存在一个）
		 */
		private static var isRegisterApp:Boolean=false;
		/**
		 * 整个程序在div初始化的时候才调用一次
		 */
		public static function initApp():void
		{
			if(!ApplicationManager.isRegisterApp)
			{
//				var str:String = "function parseStringToJs(str){var oHead = document.getElementsByTagName('HEAD').item(0);";
//				str+="var oScript = document.createElement(\"script\");";
//				str+="oScript.language = \"javascript\";";
//				str+="oScript.type = \"text/javascript\";";
//				str+="oScript.id = \"test\";";
//				str+="oScript.defer = true;";
//				str+="oScript.text = str;";
//				str+="oHead.appendChild(oScript);}";
//				ExternalInterface.call("eval",str);
//				var includeStream:IncludeStream=new IncludeStream();
//				var strey:String=includeStream.toString();
//				var len:Number=strey.length;
//				var char:RegExp = /\\/g;
//				strey = strey.replace(char,"\\\\");
//				ExternalInterface.call("parseStringToJs",strey);
				
				ExternalInterface.addCallback("initBridgeJsToFlex",ApplicationManager.initBridgeJsToFlex);
				ApplicationManager.isRegisterApp=true;
			}
			
		}
		/**
		 * js回调的函数在此函数中进行处理
		 */
		public static function initBridgeJsToFlex(key:String,event:String,array:Object):void
		{
			
			if(classHashTable.find(parseInt(key)).value is ClassBase)
			{
				//传递给基类处理，其实传递的是之前的对象来处理
				(classHashTable.find(parseInt(key)).value as ClassBase).jsToFlexcallback(event,ApplicationManager.parseArguments(array));
			}
		}
		/**
		 * 创建一个不存在的id
		 * 
		 */
		public static function createKEY():Number
		{
			//哈希表的构建就是后面的id必须比前面的大，所以通过时间来遍历增加就不会重复
			var date:Date=new Date();
			var key:Number=verifyKEY(date.time);
			return key;
		}
		
		/**
		 * 验证id是否存在，如果存在就变大，反复验证，知道不重复为止
		 * 
		 * 
		 */
		public static var keyId:Number=0;
		public static function verifyKEY(key:Number):Number
		{
			key+=keyId++;
			if(classHashTable.find(key))
			{
				
				verifyKEY(key+1);
			}
			return key;
		}
		
		/**
		 * 将创建了的对象保存在内存中
		 * 
		 */
		public static function addObject(object:Object):void
		{
			var link:Link=new Link(object.KEY,object);
			classHashTable.insert(link);
		}
		/**
		 * 解析js端返回的结果
		 */
		public static function parseArguments(object:Object):Object
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
					var resultType:String=(object as String).split("$")[1];
					var resultValue:String=(object as String).split("$")[0];
					if(resultType=="String")
					{
						result= resultValue;
					}
					else
					{
						var resultClass:Class=getDefinitionByName(resultType) as Class;
						result= new resultClass({key:parseInt(resultValue),isNew:false});
					}
					break;
				}
				case "number":
				{
					result=object as Number;
					break;
				}
				case "boolean":
				{
					result=object as Boolean;
					break;
				}
				case "object":
				{
					if(object is Array)
					{
						var myArray:Array=(object as Array);
						for(var i:Number=0;i<myArray.length;i++)
						{
							myArray[i]=ApplicationManager.parseArguments(myArray[i]);
						}
						result=myArray;
					}
					else if(object is Date)
					{
						//暂不开放
					}
					break;
				}
					
				default:
				{
					break;
				}
			}
			return result;
		}
	}
}