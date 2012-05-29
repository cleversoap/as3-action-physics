package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;
	
	public class APShape
	{
		protected var _centre	:Point;
		protected var _area		:Number;
		
		public function APShape() 
		{
		}
		
		protected function calculateCentre():void
		{
			_centre = new Point(0, 0);
		}
		
		protected function calculateArea():void
		{
			_area = 0;
		}
		
		public function get centre():Point
		{
			return _centre;
		}
		
		public function get area():Number
		{
			return _area;
		}
	}
}