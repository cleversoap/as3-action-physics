package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;
	public class APShapeCircle extends APShape 
	{
		protected var _radius	:Number;
		
		public function APShapeCircle(radius:Number) 
		{
			super();
			_radius = radius;
			calculateCentre();
			calculateArea();
		}
		
		protected override function calculateCentre():void
		{
			_centre = new Point(_radius, _radius);
		}
		
		protected override function calculateArea():void
		{
			_area = Math.PI * (_radius ^ 2);
		}
		
		public function get radius():Number
		{
			return _radius;
		}
	}
}