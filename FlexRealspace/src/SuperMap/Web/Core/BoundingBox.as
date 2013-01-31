package SuperMap.Web.Core
{
	import SuperMap.Web.Util.ClassBase;
	/**
	 * 包围盒类
	 * （可以初始化，对外开放）
	 * 该类用于描述三维要素的最小外接立方体，即三维要素的空间地理范围。
	 */
	public class BoundingBox extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="BoundingBox";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Core.BoundingBox";
		/**
		 * 使用给定的包围盒的最大点和最小点初始化 BoundingBox 类的新实例。
		 * 
		 * @param lower 包围盒的最小点，即 x、y、z 坐标都为最小值的点。(SuperMap.Web.Core.Vector3D类型)
		 * @param upper 包围盒的最大点，即 x、y、z 坐标都为最大值的点。 
		 * 
		 * @example 以下例子示范了如何创建一个包围盒对象
		 * <listing>
		 * //初始化包围盒的最小点
		 * var vector3DLower:SuperMap.Web.Core.Vector3D=new SuperMap.Web.Core.Vector3D(1,1,1);
		 * //初始化包围盒的最大点
		 * var vector3DUpper:SuperMap.Web.Core.Vector3D=new SuperMap.Web.Core.Vector3D(2,2,2);
		 * //初始化包围盒
		 * var boundingBox:SuperMap.Web.Core.BoundingBox=new SuperMap.Web.Core.BoundingBox(vector3DLower,vector3DUpper);
		 * //判定包围盒是否为空，返回false，不为空
		 * var isEmpty:Boolean=boundingBox.isEmpty();
		 * </listing>
		 */
		public function BoundingBox(lower:Object=null,upper:Vector3D=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(lower is Vector3D)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					lower.KEY.toString()+"$Object",
					upper.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=lower["key"] as Number;
				isNew=lower["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		/**
		 * 复制指定的包围盒对象到当前对象。
		 * clone 与 copy 的区别：clone 要创建一个新的与原对象一样的对象；
		 * 而 copy 则是将原对象中的值复制到现在的对象中，不需要重新创建一个对象。
		 * @param boundingBox：被复制的包围盒对象。
		 */
		public function copy(boundingBox:BoundingBox):void
		{
			var realArgument:Array=[boundingBox.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"copy",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
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
		 * 判断当前包围盒类对象与指定的包围盒对象的最小三维点和最大三维点坐标是否相等。
		 * @param object： 指定的包围盒对象。
		 * @return 如果指定的包围盒对象与当前包围盒对象最小三维点和最大三维点坐标相等，则返回 true，否则返回 false。
		 */
		public function equals(boundingBox:BoundingBox):Boolean
		{
			var realArgument:Array=[boundingBox.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"equals",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 判断包围盒是否为空。
		 * @return 如果包围盒对象为空，返回 true，否则返回 false。
		 */
		public function isEmpty():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"isEmpty",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 获取包围盒的中心点。
		 * @return 返回此包围盒的中心点
		 */
		public function get_center():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_center",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 获取包围盒的最小三维点，即 x,y,z 坐标值最小的三维点对象。
		 * @return 返回此包围盒的最小三维点
		 */
		public function get_lower():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_lower",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 设置包围盒的最小三维点，即 x,y,z 坐标值最小的三维点对象。
		 * @param value 需要设置的包围盒的最小三维点
		 */
		public function set_lower(value:Vector3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_lower",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取包围盒的最大三维点，即 x,y,z 坐标值最大的三维点对象。
		 * @return 返回此包围盒的最大三维点
		 */
		public function get_upper():Vector3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_upper",
					isReturn:true
			};
			return this.flexToJsCall(array) as Vector3D;
		}
		/**
		 * 设置包围盒的最大三维点，即 x,y,z 坐标值最大的三维点对象。
		 * @param value 需要设置的包围盒的最小三维点
		 */
		public function set_upper(value:Vector3D):void
		{
			var realArgument:Array=[value.KEY.toString()+"$Object"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_upper",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}