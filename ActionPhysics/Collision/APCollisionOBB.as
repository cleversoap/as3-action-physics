package ActionPhysics.Collision
{
	import flash.geom.Point;
	public class APCollisionOBB
	{
		protected var _vertexes	:Array;
		protected var _origin	:Point;
		
		public function APCollisionOBB():void
		{
			
		}
		
		public function compare(target:APCollisionOBB):void
		{
			// The projection axis is perpendicular to the normal of the vertex we are now testing
			// Remember to account for the rotation matrix
			
			// Cast ALL the points (figure out which ones may not be needed later)
			// to the projection axis
			
			// Along the line, get the max and min of A and B along the X axis
			// If the max of A is greater than the min of B
			// or the max of B is greater than the min of A
			// they are colliding along that axis
			
			// If ANY comparison does not collide then the shapes are not colliding
		}
		
		protected function get origin():Point
		{
			return _origin;
		}
	}
}