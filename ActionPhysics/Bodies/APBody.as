package ActionPhysics.Bodies
{
    import flash.events.EventDispatcher;
    import flash.geom.Point;

	import ActionPhysics.Math.APVector2;
	import ActionPhysics.Bodies.Shapes.APShape;

    public class APBody extends EventDispatcher
    {
        public static const FIXED   :String = "APBody.FIXED";
        public static const RIGID   :String = "APBody.RIGID";
        public static const SOFT    :String = "APBody.SOFT";
        
        protected var _mass     :Number;
        
        protected var _position :Point;
		
		protected var _rotation	:Number;
		
		protected var _shape	:APShape;
		
		protected var _bodyType	:String;
		
		// X,Y velocity
		protected var _velocity	:APVector2;
        
        public function APBody(bodyType:String, shape:APShape = null):void
        {
			_velocity = new APVector2();
			_position = new Point();
			_rotation = 0;
			_shape = (shape != null ? shape : new APShape());
        }
		
		public function get mass():Number
		{
			return _mass;
		}
		
		public function set mass(newMass:Number):void
		{
			_mass = newMass;
		}
		
		public function get shape():APShape
		{
			return _shape;
		}
		
		public function set shape(newShape:APShape):void
		{
			_shape = newShape;
		}
		
		public function get position():Point
		{
			// TODO: optimize so it isn't called as much
			return new Point(_position.x, _position.y);
		}
		
		public function get x():Number
		{
			return this.position.x;
		}
		
		public function set x(newX:Number):void
		{
			_position.x = newX;
		}
		
		public function get y():Number
		{
			return this.position.y;
		}
		
		public function set y(newY:Number):void
		{
			_position.y = newY;
		}
		
		public function get rotation():Number
		{
			return _rotation;
		}
		
		public function set rotation(newRotation:Number):void
		{
			_rotation = newRotation;
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