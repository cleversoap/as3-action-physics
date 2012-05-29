package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;
	public class APShapeRectangle extends APShapePolygon
	{
		public function APShapeRectangle(width:Number, height:Number):void 
		{
			super(new Point(0, 0), new Point(width, 0), new Point(width, height), new Point(0, height));
		}
		
		protected override function calculateCentre():void
		{
			_centre = new Point(this.width / 2, this.height / 2);
		}
		
		protected override function calculateArea():void
		{
			_area = this.width * this.height;
		}
		
		public function get width():Number
		{
			return _points[2].x;
		}
		
		public function get height():Number
		{
			return _points[2].y;
		}
	}
}