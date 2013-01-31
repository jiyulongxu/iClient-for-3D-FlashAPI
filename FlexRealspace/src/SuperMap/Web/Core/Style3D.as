package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 三维要素风格类
	 * （可以初始化，对外开放）
	 * 该类主要用于设置三维要素对象的显示风格。
	 */
	public class Style3D extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Style3D";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.Style3D";
		/**
		 * 初始化 Style3D 类的新实例。
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * 
		 * </listing>
		 */
		public function Style3D(object:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(object==null)
			{
				key=0;
				isNew=true;
				array={
					className:this.REALSPACE_CLASSNAME
				};
			}
			else
			{
				key=object["key"] as Number;
				isNew=object["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 克隆三维要素风格。
		 * @return 返回新的三维要素风格。
		 */
		public function clone():Style3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"clone",
					isReturn:true
			};
			return this.flexToJsCall(array) as Style3D;
		}
		/**
		 * 释放资源。
		 */
		public function dispose():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"dispose",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维几何对象的高度模式 AltitudeMode。 
		 * @return 返回三维几何对象的高度模式
		 */
		public function get_altitudeMode():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_altitudeMode",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象的高度模式 AltitudeMode。
		 * @param value 需要设置的三维几何对象的高度模式
		 */
		public function set_altitudeMode(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_altitudeMode",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取二维对象的底部高程值，单位为米。
		 * 当二维几何对象作为三维几何对象显示在三维窗口中时，利用对象原有的坐标信息，
		 * 将对象显示在相应的坐标处，同时，还可以使用该属性设定的底部高程值将相应的对象显示在对应的高度上，
		 * 也就是该属性值提供了对象的高程信息。  
		 * @return 返回二维对象的底部高程值
		 */
		public function get_bottomAltitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_bottomAltitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置二维对象的底部高程值，单位为米。
		 * 当二维几何对象作为三维几何对象显示在三维窗口中时，利用对象原有的坐标信息，
		 * 将对象显示在相应的坐标处，同时，还可以使用该属性设定的底部高程值将相应的对象显示在对应的高度上，
		 * 也就是该属性值提供了对象的高程信息。 
		 * @param value 需要设置的二维对象的底部高程值
		 */
		public function set_bottomAltitude(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_bottomAltitude",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取几何对象（点、线、面和文本）的拉伸高度值，单位为米。
		 * 当需要将点、线、面和文本作为体几何对象显示在三维窗口中时，
		 * 使用该属性值可以对这些几何对象进行垂直拉伸，该属性值确定了拉伸的高度。 
		 * @return 返回几何对象（点、线、面和文本）的拉伸高度值
		 */
		public function get_extendHeight():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_extendHeight",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置几何对象（点、线、面和文本）的拉伸高度值，单位为米。
		 * 当需要将点、线、面和文本作为体几何对象显示在三维窗口中时，
		 * 使用该属性值可以对这些几何对象进行垂直拉伸，该属性值确定了拉伸的高度。 
		 * @param value 需要设置的几何对象（点、线、面和文本）的拉伸高度值
		 */
		public function set_extendHeight(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_extendHeight",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何体对象的填充模式 Fill3DMode。 
		 * @return 返回三维几何体对象的填充模式
		 */
		public function get_fill3DMode():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_fill3DMode",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何体对象的填充模式 Fill3DMode。 
		 * @param value 需要设置的三维几何体对象的填充模式 
		 */
		public function set_fill3DMode(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_fill3DMode",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何面对象的填充前景颜色。  
		 * @return 三维几何面对象的填充前景颜色。
		 */
		public function get_fillForeColor():Color
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_fillForeColor",
					isReturn:true
			};
			return this.flexToJsCall(array) as Color;
		}
		/**
		 * 设置三维几何面对象的填充前景颜色。 
		 * @param value 需要设置的三维几何面对象的填充前景颜色
		 */
		public function set_fillForeColor(value:Color):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_fillForeColor",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取地标图片的锚点位置，图片的左上角为[0,0]，图片的右下角为[1,1]。 
		 * @return 返回地标图片的锚点位置
		 */
		public function get_iconAnchorPoint():Point2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_iconAnchorPoint",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point2D;
		}
		/**
		 * 设置地标图片的锚点位置，图片的左上角为[0,0]，图片的右下角为[1,1]。 
		 * @param value 需要设置的地标图片的锚点位置
		 */
		public function set_iconAnchorPoint(value:Point2D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_iconAnchorPoint",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维模型对象是否固定大小。默认为 Ture 表示不固定大小，反之 False 表示固定大小。
		 * @return 返回三维模型对象是否固定大小
		 */
		public function get_isMarkerSizeFixed():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_isMarkerSizeFixed",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 设置三维模型对象是否固定大小。默认为 Ture 表示不固定大小，反之 False 表示固定大小。
		 * @param value 需要设置的三维模型对象是否固定大小
		 */
		public function set_isMarkerSizeFixed(value:Boolean):void
		{
			var realArgument:Array=[value.toString()+"$Boolean"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_isMarkerSizeFixed",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何线对象的颜色。 
		 * @return 返回三维几何线对象的颜色
		 */
		public function get_lineColor():Color
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_lineColor",
					isReturn:true
			};
			return this.flexToJsCall(array) as Color;
		}
		/**
		 * 设置三维几何线对象的颜色。  
		 * @param value 需要设置的三维几何线对象的颜色
		 */
		public function set_lineColor(value:Color):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_lineColor",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何线对象的宽度，像素单位。 
		 * @return 返回三维几何线对象的宽度
		 */
		public function get_lineWidth():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_lineWidth",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何线对象的宽度，像素单位。 
		 * @param value 需要设置的三维几何线对象的宽度
		 */
		public function set_lineWidth(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_lineWidth",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何点对象的颜色。 
		 * @return 返回三维几何点对象的颜色
		 */
		public function get_markerColor():Color
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_markerColor",
					isReturn:true
			};
			return this.flexToJsCall(array) as Color;
		}
		/**
		 * 设置三维几何点对象的颜色。 
		 * @param value 需要设置的  三维几何点对象的颜色
		 */
		public function set_markerColor(value:Color):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_markerColor",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维点几何对象图标的所在服务器路径，即用该图标符号化三维几何点对象。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。
		 * @return 返回三维点几何对象图标的所在服务器路径
		 */
		public function get_markerFile():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_markerFile",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置三维点几何对象图标的所在服务器路径，即用该图标符号化三维几何点对象。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。
		 * @param value 需要设置的三维点几何对象图标的所在服务器路径
		 */
		public function set_markerFile(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_markerFile",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何点对象图标的缩放比率。例如2表示放大两倍，0.5表示缩小两倍。
		 * @return 返回三维几何点对象图标的缩放比率
		 */
		public function get_markerScale():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_markerScale",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何点对象图标的缩放比率。例如2表示放大两倍，0.5表示缩小两倍。
		 * @param value 需要设置的三维几何点对象图标的缩放比率
		 */
		public function set_markerScale(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_markerScale",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何点对象的大小，单位为毫米，精确到0.1。 
		 * @return 返回三维几何点对象的大小
		 */
		public function get_markerSize():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_markerSize",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何点对象的大小，单位为毫米，精确到0.1。 
		 * @param value 需要设置的三维几何点对象的大小
		 */
		public function set_markerSize(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_markerSize",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取模型对象用于侧面纹理渲染的一系列图片文件所在的服务器路径。
		 * 三维模型对象的侧面将使用该属性指示的图片进行纹理渲染。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。
		 * @return 返回模型对象用于侧面纹理渲染的一系列图片文件所在的服务器路径（字符串一维数组）
		 */
		public function get_sideTextureFiles(): Array
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_sideTextureFiles",
					isReturn:true
			};
			return this.flexToJsCall(array) as  Array;
		}
		/**
		 * 设置模型对象用于侧面纹理渲染的一系列图片文件所在的服务器路径。
		 * 三维模型对象的侧面将使用该属性指示的图片进行纹理渲染。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。 
		 * @param value 需要设置的服务器路径名称数组（字符串一维数组） 
		 */
		public function set_sideTextureFiles(value:Array):void
		{
			//参数为数组时调用基类的方法objectToString来转换为字符串
			//也可以自己写，不过规则比较复杂
			var realArgument:Array=[this.objectToString(value)];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_sideTextureFiles",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维模型对象的侧面或顶部纹理横向渲染重复次数。
		 * 三维体对象的侧面或顶部可以使用指定的图片进行纹理渲染，
		 * 在渲染时系统会根据图片的尺寸、体对象侧面或顶部的尺寸以及重复贴图的次数（包括横向和纵向次数）对图片进行拉伸，
		 * 而该属性指定的数值为图片在侧面或顶部横向上重复贴图的次数。次数允许为小数。 
		 * @return 返回三维模型对象的侧面或顶部纹理横向渲染重复次数
		 */
		public function get_tilingU():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_tilingU",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维模型对象的侧面或顶部纹理横向渲染重复次数。
		 * 三维体对象的侧面或顶部可以使用指定的图片进行纹理渲染，
		 * 在渲染时系统会根据图片的尺寸、体对象侧面或顶部的尺寸以及重复贴图的次数（包括横向和纵向次数）对图片进行拉伸，
		 * 而该属性指定的数值为图片在侧面或顶部横向上重复贴图的次数。次数允许为小数。 
		 * @param value 需要设置的三维模型对象的侧面或顶部纹理横向渲染重复次数
		 */
		public function set_tilingU(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_tilingU",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维模型对象的侧面或顶部纹理纵向渲染重复次数。
		 * 三维体对象的侧面或顶部可以使用指定的图片进行纹理渲染，
		 * 在渲染时系统会根据图片的尺寸、体对象侧面或顶部的尺寸以及重复贴图的次数（包括横向和纵向次数）对图片进行拉伸，
		 * 而该属性指定的数值为图片在侧面或顶部纵向上重复贴图的次数。次数允许为小数。
		 * @return 返回三维模型对象的侧面或顶部纹理纵向渲染重复次数
		 */
		public function get_tilingV():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_tilingV",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维模型对象的侧面或顶部纹理纵向渲染重复次数。
		 * 三维体对象的侧面或顶部可以使用指定的图片进行纹理渲染，
		 * 在渲染时系统会根据图片的尺寸、体对象侧面或顶部的尺寸以及重复贴图的次数（包括横向和纵向次数）对图片进行拉伸，
		 * 而该属性指定的数值为图片在侧面或顶部纵向上重复贴图的次数。次数允许为小数。
		 * @param value 需要设置的三维模型对象的侧面或顶部纹理纵向渲染重复次数
		 */
		public function set_tilingV(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_tilingV",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维模型对象顶部纹理文件所在服务器路径。
		 * 三维模型对象的顶部将使用该属性所指示的图片进行纹理渲染。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。
		 * @return 返回三维模型对象顶部纹理文件所在服务器路径
		 */
		public function get_topTextureFile():String
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_topTextureFile",
					isReturn:true
			};
			return this.flexToJsCall(array) as String;
		}
		/**
		 * 设置三维模型对象顶部纹理文件所在服务器路径。
		 * 三维模型对象的顶部将使用该属性所指示的图片进行纹理渲染。
		 * 该属性只支持 bmp, png, jpg 图片格式的文件，其余的不支持。
		 * @param value 需要设置的三维模型对象顶部纹理文件所在服务器路径
		 */
		public function set_topTextureFile(value:String):void
		{
			var realArgument:Array=[value+"$String"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_topTextureFile",
					isReturn:true,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}