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
		
		protected var _bodyType	:String;
		
		// X,Y velocity
		protected var _velocity	:APVector2;
        
        public function APBody(bodyType:String, points:Array = null):void
        {
			_velocity = new APVector2();
			_position = new Point();
			_points = (points != null && points is Array ? points : new Array());
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
		
		public function get x():Number
		{
			return _position.x;
		}
		
		public function set x(newX:Number):void
		{
			// Set all points to the new x
			
			_position.x = newX;
		}
		
		public function get y():Number
		{
			return _position.y;
		}
		
		public function set y(newY:Number):void
		{
			_position.y = newY;
		}
		
		public function get rotation():Number
		{
			return _rotation;
		}
		
		public function get velocity():APVector2
		{
			return _velocity;
		}
		
		public function get bodyType():String
		{
			return _bodyType;
		}
		
		public function set bodyType(newBodyType:String):void
		{
			_bodyType = newBodyType;
		}
    }
}