package SuperMap.Web.Core
{
	/**
	 * 三维几何对象抽象类
	 * （不可以初始化，对外开放）
	 * 它是所有三维几何类的基类，提供了基本的三维几何类的属性和方法。
	 * 通过本类可以对三维几何对象的姿态进行控制，包括对象的位置，旋转角度，缩放比例和内点；
	 * 还可以对三维几何对象进行偏移以及获取三维模型几何对象。
	 */
	public class Geometry3D extends Geometry
	{
		/**
		 * 
		 * @param key 
		 * @param isNew 
		 * @param array
		 * 
		 */
		public function Geometry3D(key:Number=0, isNew:Boolean=true, array:Object=null)
		{
			super(key, isNew, array);
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
		 * 判断以指定点为圆心指定容限值为半径的圆与当前几何对象是否有交集。
		 * @param point 指定点。
		 * @param tolerance 容限值，单位与数据集的单位相同。
		 * @return 如果与当前几何对象有交集返回 true；否则返回 false。
		 */
		public function hitTest(point:Point2D,tolerance:Number):Boolean
		{
			var realArgument:Array=[point.KEY.toString()+"$Object",tolerance.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"hitTest",
					isReturn:true,
					realArgument:realArgument
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 按指定比例缩放组成几何对象的坐标值。
		 * @param dRatioX X方向（经度方向）缩放比率。
		 * @param dRatioY Y方向（纬度方向）缩放比率。
		 * @param dRatioZ Z方向（高度）缩放比率。
		 */
		public function inflate3D(dRatioX:Number,dRatioY:Number,dRatioZ:Number):void
		{
			var realArgument:Array=[dRatioX.toString()+"$Number",dRatioY.toString()+"$Number",dRatioZ.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"inflate3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取几何对象是否为空值，即对象中是否有数据。
		 * @return 如果几何对象为空则返回 ture，否则返回 false。
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
		 * 获取几何对象是否有效。
		 * 几何对象是否有效就是判断该几何对象是否符合它的类型定义规范。
		 * 例如对于 Geoline3D 如果只有一个点就为无效；对于 GeoRegion3D 如果三点在一条直线上也无效。
		 * @return 如果几何对象有效则返回 true，否则返回 false。
		 */
		public function isValid():Boolean
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"isValid",
					isReturn:true
			};
			return this.flexToJsCall(array) as Boolean;
		}
		/**
		 * 将此几何对象偏移指定的量。如图所示为一个面对象平移后的效果。
		 * @param offsetX 偏移 X 坐标（经度方向）的量，单位为度。 
		 * @param offsetY 偏移 Y 坐标（纬度方向）的量，单位为度。
		 */
		public function offset(offsetX:Number,offsetY:Number):void
		{
			var realArgument:Array=[offsetX.toString()+"$Number",offsetY.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"offset",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将此三维几何对象偏移指定的量。
		 * @param offsetX 偏移 X 坐标（经度方向）的量，单位为度。 
		 * @param offsetY 偏移 Y 坐标（纬度方向）的量，单位为度。
		 * @param offsetZ 偏移 Z 坐标（高度）的量，单位为米。
		 */
		public function offset3D(offsetX:Number,offsetY:Number,offsetZ:Number):void
		{
			var realArgument:Array=[offsetX.toString()+"$Number",offsetY.toString()+"$Number",offsetZ.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"offset3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将此三维几何对象绕旋转中心点旋转指定角度，逆时针为正方向，角度以度为单位。
		 * @param vecOrigin 旋转中心点。
		 * @param dAngle 旋转角度，单位为度。
		 */
		public function rotate3D(vecOrigin:Vector3D,dAngle:Number):void
		{
			var realArgument:Array=[vecOrigin.KEY.toString()+"$Object",dAngle.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"rotate3D",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 清空三维几何对象中的空间数据。但几何对象的标识符和几何风格保持不变。 
		 */
		public function setEmpty():void
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"setEmpty",
					isReturn:false
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取三维几何对象的包围盒对象。
		 * @return 返回包围盒对象
		 */
		public function get_boundingBox():BoundingBox
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_boundingBox",
					isReturn:true
			};
			return this.flexToJsCall(array) as BoundingBox;
		}
		/**
		 * 获取几何对象在经纬度平面的地理范围，即几何对象的在经纬度平面的最小外接矩形。点的最小外接矩形就是点本身。
		 * @return 返回地理范围 
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
		 * 获取几何对象的内点。内点可以在很多情况下被使用，例如，当创建标签专题图时，几何对象的内点将作为标签专题图的锚点。
		 * 不同的几何对象，内点位置不同：
		 * 1.点对象的内点是该点本身。
		 * 2.线对象的内点是线对象的节点数最多的子对象的内点（当线对象只有一个子对象时，取该子对象的内点）。当该子对象有奇数个节点时，取中间一个节点为内点；
		 * 当该子对象有偶数个节点时（多于两个节点的情况），取中间两个节点之后者为内点；当该子对象只有两个节点时，取两节点之中心为内点。
		 * 3.面对象的内点是在几何对象的内部，并靠近中心点。
		 * 4.文本对象的内点是该文本对象的第一个子对象的锚点。
		 * @return 返回几何对象的内点
		 */
		public function get_innerPoint():Point2D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_innerPoint",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point2D;
		}
		/**
		 * 获取三维几何对象的内点，即在三维几何对象的内部且靠近中心点。 
		 * @return 返回三维几何对象的内点
		 */
		public function get_innerPoint3D():Point3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_innerPoint3D",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point3D;
		}
		/**
		 * 获取三维几何对象的位置。该位置的坐标值是三维几何对象外接长方体底面中心点的三维坐标值。
		 * 这个底面中心点用来控制三维几何对象在地球上放置位置。目前只对模型、图片有效。 
		 * @return 返回三维几何对象的位置
		 */
		public function get_position():Point3D
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_position",
					isReturn:true
			};
			return this.flexToJsCall(array) as Point3D;
		}
		/**
		 * 设置三维几何对象的位置。该位置的坐标值是三维几何对象外接长方体底面中心点的三维坐标值。
		 * 这个底面中心点用来控制三维几何对象在地球上放置位置。目前只对模型、图片有效。 
		 * @param value 需要设置的三维几何对象的位置
		 */
		public function set_position(value:Point3D):void
		{
			var realArgument:Array=[
				value.KEY.toString()+"$Object"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_position",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 X 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 X 轴方向的旋转角度
		 */
		public function get_rotationX():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_rotationX",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 X 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。 
		 * @param value 需要设置的三维几何对象沿 X 轴方向的旋转角度
		 */
		public function set_rotationX(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_rotationX",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 Y 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 Y 轴方向的旋转角度
		 */
		public function get_rotationY():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_rotationY",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 Y 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。 
		 * @param value 需要设置的三维几何对象沿 Y 轴方向的旋转角度
		 */
		public function set_rotationY(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_rotationY",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 Z 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 Z 轴方向的旋转角度
		 */
		public function get_rotationZ():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_rotationZ",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 Z 轴方向的旋转角度。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。 
		 * @param value 需要设置的三维几何对象沿 Z 轴方向的旋转角度
		 */
		public function set_rotationZ(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_rotationZ",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 X 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 X 轴方向的缩放比例
		 */
		public function get_scaleX():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_scaleX",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 X 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @param value 需要设置的 三维几何对象沿 X 轴方向的缩放比例
		 */
		public function set_scaleX(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_scaleX",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 Y 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 Y 轴方向的缩放比例
		 */
		public function get_scaleY():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_scaleY",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 Y 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。 
		 * @param value 需要设置的 三维几何对象沿 Y 轴方向的缩放比例
		 */
		public function set_scaleY(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_scaleY",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取三维几何对象沿 Z 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。
		 * @return 返回三维几何对象沿 Z 轴方向的缩放比例
		 */
		public function get_scaleZ():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_scaleZ",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置三维几何对象沿 Z 轴方向的缩放比例。采用的坐标系以球心为原点，北方向为 Y 轴的右手坐标系。该属性目前只对模型、图片有效。 
		 * @param value 需要设置的 三维几何对象沿 Z 轴方向的缩放比例
		 */
		public function set_scaleZ(value:Number):void
		{
			var realArgument:Array=[
				value.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_scaleZ",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}