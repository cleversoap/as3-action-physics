package ActionPhysics.Bodies
{
    import flash.events.EventDispatcher;
    import flash.geom.Point;

	import ActionPhysics.Math.APVector2;

    public class APBody extends EventDispatcher
    {
        public static const FIXED   :String = "APBody.FIXED";
        public static const RIGID   :String = "APBody.RIGID";
        public static const SOFT    :String = "APBody.SOFT";
        
        protected var _mass     :Number;
        
        protected var _position :Point;

		protected var _rotation	:Number;
		
		protected var _points	:Array;
		
		// X,Y velocity
		protected var _velocity	:APVector2;
        
        public function APBody():void
        {
			_velocity = new APVector2();
			_points = new Array();
        }

		public function get mass():Number
		{
			return _mass;
		}
		
		public function set mass(newMass:Number):void
		{
			_mass = newMass;
		}

		public function get position():Point
		{
			return _position;
		}
		
		public function get rotation():Number
		{
			return _rotation;
		}

		public function get velocity():APVector2
		{
			return _velocity;
		}
    }
}