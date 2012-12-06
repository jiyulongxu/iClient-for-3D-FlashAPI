package SuperMap.Web.Realspace
{
	import SuperMap.Web.Util.ClassBase;
	
	/**
	 * 照相机类（必须在存在三维场景控件下才能创建）
	 * 该对象利用照相机原理来模拟观察者通过视锥并以指定的姿态观察场景内指定空间坐标的三维地物。
	 * */
	public class Camera extends ClassBase
	{
		/**
		 * 用于确认对象的类型
		 */
		public var CLASSNAME:String="Camera";
		//存储此类的全称，需要和js端名称一样
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.Realspace.Camera";
		
		/**
		 * 构造函数
		 * longitude：经度
		 * latitude：纬度
		 * altitude：高度
		 */
		public function Camera(longitude:Object=0,latitude:Number=0,altitude:Number=0)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(longitude is Number)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					longitude.toString()+"$Number",
					latitude.toString()+"$Number",
					altitude.toString()+"$Number"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=longitude["key"] as Number;
				isNew=longitude["isNew"] as Boolean;
			}
			super(key,isNew,array);
		}
		
		/**
		 * 判断当前相机参数设置是否有效。
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
		 * 获取相机高度
		 */
		public function get_altitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_altitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置相机高度
		 * value：相机高度
		 */
		public function set_altitude(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_altitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取高度模式，默认值为 RELATIVE_TO_GROUND(也就是1)。
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
		 * 设置高度模式，默认值为 RELATIVE_TO_GROUND(也就是1)。
		 * value：高度模式
		 */
		public function set_altitudeMode(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_altitudeMode",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		
		/**
		 * 获取相机视角的方位角（即和北方的夹角），范围是0-360度，默认值为0。
		 */
		public function get_heading():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_heading",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		
		/**
		 * 设置相机视角的方位角（即和北方的夹角），范围是0-360度，默认值为0。 
		 * value：方位角
		 */
		public function set_heading(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_heading",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取相机视角的纬度，单位为度，默认值为0。
		 */
		public function get_latitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_latitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置相机视角的纬度，单位为度，默认值为0。
		 * value：相机纬度
		 */
		public function set_latitude(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_latitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取相机视角的经度，单位为度，默认值为0。
		 */
		public function get_longitude():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_longitude",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置相机视角的经度，单位为度，默认值为0。
		 * value：相机经度
		 */
		public function set_longitude(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_longitude",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
		/**
		 * 获取相机的俯角，范围为0度-90度（绕X轴的角度），默认值为0。
		 */
		public function get_tilt():Number
		{
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"get_tilt",
					isReturn:true
			};
			return this.flexToJsCall(array) as Number;
		}
		/**
		 * 设置相机的俯角，范围为0度-90度（绕X轴的角度），默认值为0。
		 * value：俯角
		 */
		public function set_tilt(value:Number):void
		{
			var realArgument:Array=[value.toString()+"$Number"];
			var array:Object={
				action:"FUNCTION",
				isNew:true,
				key:this.KEY,
					functionName:"set_tilt",
					isReturn:false,
					realArgument:realArgument
			};
			this.flexToJsCall(array);
		}
	}
}