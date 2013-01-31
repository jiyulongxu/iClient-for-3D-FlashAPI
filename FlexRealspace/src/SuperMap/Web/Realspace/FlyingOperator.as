package SuperMap.Web.Realspace
{
	import SuperMap.Web.Core.Geometry3D;
	import SuperMap.Web.Core.Rectangle2D;
	import SuperMap.Web.Util.ClassBase;

	/**
	 * 飞行状态类
	 * （不可以初始化，对外开放）
	 * 该类作为 Scene 类的属性，主要用于设置场景的飞行状态，包括指定飞向下一个场景的方位、控制飞行方式以及飞行动画。
	 * 该类不能创建，只能通过场景获取 Scene.get_flyingOperator()
	 */
	public class FlyingOperator extends ClassBase
	{
		
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="FlyingOperator";
		/**
		 * 对应js API的类全名
		 */
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.FlyingOperator";
		
		/**
		 * @example 以下例子示范了如何使用
		 * <listing>
		 * //获取Realspace控件的场景，控件和场景是一对一的捆绑关系
		 * scene=m_sceneControl.get_scene();
		 * //获取飞行状态对象
		 * var flyingOperator:FlyingOperator=scene.get_flyingOperator();
		 * //新建一个照相机对象
		 * var camera:SuperMap.Web.Realspace.Camera=new SuperMap.Web.Realspace.Camera(116.348,40,1000000.0);
		 * //按照范围飞行定位
		 * flyingOperator.flyToBounds(new SuperMap.Web.Core.Rectangle2D(110,35,111,36),5000);
		 * </listing>
		 */
		public function FlyingOperator(object:Object=null)
		{
			var key:Number=object["key"] as Number;
			var isNew:Boolean=object["isNew"] as Boolean;
			super(key,isNew,null);
		}
		
		/**
		 * 在指定的时间内，以指定的方式从当前场景飞行至指定的相机位置。
		 * @param camera 相机类，设置场景将要飞至的位置。
		 * @param nMillSec 飞行时间，单位为毫秒。可选参数，默认值为-1，将以一个默认速度匀速飞行到指定地点。
		 * @param flyingMode 飞行方式。默认值为 SuperMap.Web.Realspace.FlyingMode.CAMERA_NORMAL。（也就是6）
		 */
		public function flyTo(camera:Camera,nMillSec:Number=-1,flyingMode:Number=6):void
		{
			var realArgument:Array=[
				camera.KEY.toString()+"$Object",
				nMillSec.toString()+"$Number",
				flyingMode.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"flyTo",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 将当前场景飞行至指定的 Bounds 区域
		 * @param rectangle2D 将指定的 bounds 区域作为显示区域在场景中显示。该类为 Rectangle2D 类型，单位为经纬度。
		 * @param nMillSec 飞行时间，单位为毫秒。可选参数，默认值为-1，将以一个默认速度匀速飞行到指定地点。
		 */
		public function flyToBounds(rectangle2D:Rectangle2D,nMillSec:Number=-1):void
		{
			var realArgument:Array=[
				rectangle2D.KEY.toString()+"$Object",
				nMillSec.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"flyToBounds",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 在指定的时间内，以指定的方式从当前场景飞行至指定的几何对象。
		 * @param geoObject 三维几何对象。
		 * @param nMillSec 飞行时间，单位为毫秒。可选参数，默认值为-1，将以一个默认速度匀速飞行到指定地点。
		 * @param flyingMode 飞行方式。默认值为SuperMap.Web.Realspace.FlyingMode.MULTIPOINTFLY_NORMAL。 
		 */
		public function flyToGeometry(geoObject:Geometry3D,nMillSec:Number,flyingMode:Number):void
		{
			var realArgument:Array=[
				geoObject.KEY.toString()+"$Object",
				nMillSec.toString()+"$Number",
				flyingMode.toString()+"$Number"
			];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"flyToGeometry",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 暂不开放
		 */
		public function play():void
		{}
	}
}