package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;
	public class APShapePolygon extends APShape 
	{
		protected var _points	:Vector.<Point>
		
		// TODO: List of points
		public function APShapePolygon(... points) 
		{
			super();
			_points = new Vector.<Point>();
			for each (var point:Point in points)
				_points.push(point);
		}
	}
}