package SuperMap.Web.Util
{
	
	//import SuperMap.IncludeStream;
	import SuperMap.Web.Core.GeoLine3D;
	import SuperMap.Web.Core.GeoRegion3D;
	import SuperMap.Web.Realspace.EventObject;
	import SuperMap.Web.Realspace.Selection3D;
	import SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsEventArgs;
	
	import flash.external.ExternalInterface;
	import flash.utils.getDefinitionByName;

	/**
	 * 管理类
	 * （不可初始化，不对外开放）
	 * 所有js和as的交互最终都是通过此类来操作的
	 */
	public class ApplicationManager
	{
		
		/**
		 * 记录回调通道是否注册（只能存在一个）
		 * 默认为false，注册一次都变成true
		 */
		private static var isRegisterApp:Boolean=false;
		/**
		 * 用于验证id是否存在的参数，如果存在就变大，反复验证，直到不重复为止
		 */
		private static var keyId:Number=0;
		/**
		 * 用于存储所有已经创建的对象的哈希表，默认大小为10
		 */
		public static var classHashTable:HashTable=new HashTable(10);
		/**
		 * 管理类构造函数
		 */
		public function ApplicationManager()
		{
		}
		/**
		 * 向js端发送消息
		 * @param object 记录信息的键值对
		 * @return 返回的信息的键值对
		 */
		public static function flexToJs(object:Object):Object
		{
			var result:Object=ExternalInterface.call("SuperMap.Web.Util.ApplicationManager.initBridgeFlexToJs",object);
			
			return ApplicationManager.parseArguments(result);
		}
		/**
		 * 初始化js 的API
		 * 将打包为二进制的js API所有类重新转换为js形式的API
		 * 整个程序在div初始化的时候才调用一次
		 */
		public static function initApp():void
		{
			if(!ApplicationManager.isRegisterApp)
			{
//				//初始化一个字符串形式的方法parseStringToJs，用于将字符串转换为js语言
//				var str:String = "function parseStringToJs(str){var oHead = document.getElementsByTagName('HEAD').item(0);";
//				str+="var oScript = document.createElement(\"script\");";
//				str+="oScript.language = \"javascript\";";
//				str+="oScript.type = \"text/javascript\";";
//				str+="oScript.id = \"test\";";
//				str+="oScript.defer = true;";
//				str+="oScript.text = str;";
//				str+="oHead.appendChild(oScript);}";
//				//调用window.eval方法
//				ExternalInterface.call("eval",str);
//				var includeStream:IncludeStream=new IncludeStream();
//				//获取js的字符串形式的源代码
//				var strey:String=includeStream.toString();
//				//使用正则表达式修改字符串
//				var char:RegExp = /\\/g;
//				strey = strey.replace(char,"\\\\");
//				//生成js的API
//				ExternalInterface.call("parseStringToJs",strey);
//				
//				
//				//初始化js调用as的入口方法initBridgeJsToFlex，最终饭方法的实现转给方法ApplicationManager.initBridgeJsToFlex
//				ExternalInterface.addCallback("initBridgeJsToFlex",ApplicationManager.initBridgeJsToFlex);
//				
//				ApplicationManager.isRegisterApp=true;
			}
			
		}
		/**
		 * 监听js回调的函数
		 * 此函数会将监听到的信息进行辨识，分发给对应的对象对应的操作
		 * @param key 对象的key（通过key才能知道是哪一个对象发出的消息产生的回调）
		 * @param event 回调事件类型（通过此参数才能知道某对象进行操作后回调函数该触发哪个事件）
		 * @param array 回调信息的键值对
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
		 * 创建一个不存在的key
		 * @return 返回一个内存中不存在的唯一key
		 */
		public static function createKEY():Number
		{
			//哈希表的构建就是后面的id必须比前面的大，所以通过时间来遍历增加就不会重复
			var date:Date=new Date();
			var key:Number=verifyKEY(date.time);
			return key;
		}
		
		/**
		 * 验证key是否存在
		 * @param key 需要验证的key
		 * @return 返回一个不存在的key
		 */
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
		 * 将已创建的对象保存在内存中
		 * 也就是哈希表中
		 * @param object 任意对象
		 */
		public static function addObject(object:Object):void
		{
			var link:Link=new Link(object.KEY,object);
			classHashTable.insert(link);
		}
		/**
		 * 解析js端返回的结果
		 * @param object 需要解析的js返回的键值对
		 * @return 返回解析后的键值对
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
						//很奇怪的类，下面两行代码没啥太大的用处，但是没有的话飞行结束事件EventObject类不能使用反射，作用于找不到
						//搞不清楚为什么
						if(resultType=="SuperMap.Web.Realspace.EventObject")
						{
							var sdsd1:EventObject=new EventObject({key:0,isNew:false});
						}
						if(resultType=="SuperMap.Web.Core.GeoLine3D")
						{
							var sdsd2:GeoLine3D=new GeoLine3D({key:0,isNew:false});
						}
						if(resultType=="SuperMap.Web.Core.GeoRegion3D")
						{
							var sdsd3:GeoRegion3D=new GeoRegion3D({key:0,isNew:false});
						}
						if(resultType=="SuperMap.Web.iServerJava6R.Data3D.GetFeature3DsEventArgs")
						{
							var sdsd4:GetFeature3DsEventArgs=new GetFeature3DsEventArgs({key:0,isNew:false});
						}
						if(resultType=="SuperMap.Web.Realspace.Selection3D")
						{
							var sdsd5:Selection3D=new Selection3D({key:0,isNew:false});
						}
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
						result=object as Date;
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