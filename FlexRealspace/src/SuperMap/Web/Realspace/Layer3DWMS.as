package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Color;
	import SuperMap.Web.Core.Rectangle2D;
	import SuperMap.Web.Core.Style3D;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * WMS（网络地图服务）图层类。
	 * (不可以初始化，对外开放)
	 */
	public class Layer3DWMS extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Layer3DWMS";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Layer3DWMS";
		/**
		 * 
		 */
		public function Layer3DWMS(strServerRootUrl:Object=null, strLayerName:String=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(strServerRootUrl is String)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					strServerRootUrl.toString()+"$String",
					strLayerName.toString()+"$String"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=strServerRootUrl["key"] as Number;
				isNew=strServerRootUrl["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 删除该图层缓存数据
		 */
		public function updateCacheFile():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"updateCacheFile",
					isReturn:true
			};
			this.flexToJsCall(array);
		}
		/**
		 * 刷新图层
		 */
		public function refresh():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"refresh",
					isReturn:true
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层数据下载进度
		 * @return 返回图层数据下载进度
		 */
		public function getDataStreamingProgress():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"getDataStreamingProgress",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 获取图层的名字。 
		 * @return 返回图层名
		 */
		public function get_name():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_name",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		
		/**
		 * 获取图层标题。 
		 * @return 返回图层标题
		 */
		public function get_caption():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_caption",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		
		/**
		 * 设置图层标题。 
		 * @param value 需要设置的图层标题
		 */
		public function set_caption(value:String):void
		{
			var realArgument:Array=[
				value.toString()+"$String"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_caption",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层描述信息。 
		 * @return 返回图层描述信息
		 */
		public function get_description():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_description",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		
		/**
		 * 设置图层描述信息。 
		 * @param value 需要设置的图层描述信息
		 */
		public function set_description(value:String):void
		{
			var realArgument:Array=[
				value.toString()+"$String"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_description",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层是否可见。 
		 * @return 返回图层是否可见
		 */
		public function get_isVisible():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isVisible",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置图层可见性。 
		 * @param value 需要设置的图层可见性
		 */
		public function set_isVisible(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isVisible",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层是否始终进行渲染。 
		 * @return 返回图层是否始终进行渲染
		 */
		public function get_isAlwaysRender():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isAlwaysRender",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置图层是否始终进行渲染。 
		 * @param value 需要设置的图层是否始终进行渲染
		 */
		public function set_isAlwaysRender(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isAlwaysRender",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维图层的最大可见高程值。 
		 * @return 返回图层的最大可见高程值
		 */
		public function get_maxVisibleAltitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_maxVisibleAltitude",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置图层的最大可见高程值。 
		 * @param value 需要设置的图层的最大可见高程值
		 */
		public function set_maxVisibleAltitude(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_maxVisibleAltitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维图层的最小可见高程值。 
		 * @return 返回图层的最小可见高程值
		 */
		public function get_minVisibleAltitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_minVisibleAltitude",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置图层的最小可见高程值。 
		 * @param value 需要设置的图层的最小可见高程值
		 */
		public function set_minVisibleAltitude(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_minVisibleAltitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维图层的图层的范围。 
		 * @return 返回图层的图层的范围
		 */
		public function get_bounds():Rectangle2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_bounds",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Rectangle2D;
		}
		
		/**
		 * 获取矢量类型图层的风格。 
		 * @return 返回矢量类型图层的风格
		 */
		public function get_style3D():Style3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_style3D",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Style3D;
		}
		
		/**
		 * 设置矢量类型图层的风格。 
		 * @param value 需要设置的矢量类型图层的风格
		 */
		public function set_style3D(value:Style3D):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Style3D"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_style3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取图层是否透明。 
		 * @return 返回图层是否透明
		 */
		public function get_isTransparent():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isTransparent",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置图层是否透明。 
		 * @param value 需要设置的图层是否透明
		 */
		public function set_isTransparent(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isTransparent",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取透明色。 
		 * @return 返回透明色
		 */
		public function get_transparentColor():Color
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_transparentColor",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Color;
		}
		
		/**
		 * 设置透明色。 
		 * @param value 需要设置的透明色
		 */
		public function set_transparentColor(value:Color):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Color"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_transparentColor",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取透明色容限，容限范围是（0~255）。  
		 * @return 返回透明色容限，容限范围是（0~255）。 
		 */
		public function get_transparentColorTolerance():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_transparentColorTolerance",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置透明色容限，容限范围是（0~255）。 
		 * @param value 需要设置的透明色容限，容限范围是（0~255）。 
		 */
		public function set_transparentColorTolerance(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_transparentColorTolerance",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取是否多分辨率渲染。 
		 * @return 返回是否多分辨率渲染
		 */
		public function get_renderingWithMultiResolution():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_renderingWithMultiResolution",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置是否多分辨率渲染。 
		 * @param value 需要设置的是否多分辨率渲染
		 */
		public function set_renderingWithMultiResolution(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_renderingWithMultiResolution",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取添加到三维场景中的WMS图层的背景是否透明。 
		 * @return 返回添加到三维场景中的WMS图层的背景是否透明。
		 */
		public function get_isBackgroundTransparent():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isBackgroundTransparent",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Boolean;
		}
		
		/**
		 * 设置添加到三维场景中的WMS图层的背景是否透明。 
		 * @param value 需要设置的添加到三维场景中的WMS图层的背景是否透明。
		 */
		public function set_isBackgroundTransparent(value:Boolean):void
		{
			var realArgument:Array=[
				value.toString()+"$Boolean"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isBackgroundTransparent",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取所有的WMS（网络地图服务）图层下的所有子图层名称。 
		 * @return 返回所有的WMS（网络地图服务）图层下的所有子图层名称。(字符串数组)
		 */
		public function get_allSubLayers():Array
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_allSubLayers",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Array;
		}
		/**
		 * 获取WMS（网络地图服务）图层下的可见的子图层。 
		 * @return 返回WMS（网络地图服务）图层下的可见的子图层(字符串数组)
		 */
		public function get_visibleSubLayers():Array
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_visibleSubLayers",
					isReturn:true
			}; 
			return this.flexToJsCall(array) as Array;
		}
		/**
		 * 设置WMS（网络地图服务）图层下的可见的子图层。 
		 * @param value 需要设置的WMS（网络地图服务）图层下的可见的子图层(字符串数组) 
		 */
		public function set_visibleSubLayers(value:Array):void
		{
			var realArgument:Array=[
				this.objectToString(value)
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_visibleSubLayers",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}