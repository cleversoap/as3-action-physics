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
			
			// If the last point doesn't equal the first point then join them
			if (_points.length > 1 && _points[0] != _points[_points.length - 1])
				_points.push(_points[0].clone());
				
			calculateArea();
			calculateCentre();
		}
		
		protected override function calculateArea():void
		{
			// Area
			var a:Number = 0;
			
			// Vertexes
			var vx:Number = _points.length - 1;
			
			for (var i:uint = 0; i < _points.length; i++)
			{
				var p1:Point = _points[i];
				var p2:Point = _points[vx];
				a += p1.x * p2.y;
				a -= p1.y * p2.x;
				vx = i;
			}
			
			_area = Math.abs(a / 2);
		}
		
		protected override function calculateCentre():void
		{
			var x:Number = 0;
			var y:Number = 0;
			var j:uint = _points.length - 1;
			
			for (var i:uint = 0; i < _points.length; i++)
			{
				var p1:Point = _points[i];
				var p2:Point = _points[j];
				var f:Number = p1.x * p2.y - p2.x * p1.y;
				x += (p1.x + p2.x) * f;
				y += (p1.y + p2.y) * f;
				j = i;
			}
			
			f = _area * 6;
			_centre = new Point(x / f, y / f);
		}
	}
}