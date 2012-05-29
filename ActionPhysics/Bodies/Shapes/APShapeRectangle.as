package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;
	public class APShapeRectangle extends APShapePolygon
	{
		public function APShapeRectangle(width:Number, height:Number):void 
		{
			super(new Point(0, 0), new Point(width, 0), new Point(width, -height), new Point(0, -height));
		}	
	}
}