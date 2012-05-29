package ActionPhysics.Bodies.Shapes 
{
	import flash.geom.Point;

	public class APShapeTriangle extends APShapePolygon 
	{
		
		public function APShapeTriangle(a:Point, b:Point, c:Point = null):void 
		{
			
		}
		
		public static function makeEqTriangle(size:Number):APShapeTriangle
		{
			return new APShapeTriangle(null, null, null);
		}
		
	}

}