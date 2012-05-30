package ActionPhysics.Collision 
{
	import ActionPhysics.Bodies.APBody;
	import ActionPhysics.Bodies.APBodyList;
	import ActionPhysics.Bodies.APBodyListNode;
	import ActionPhysics.Events.APBodyEvent;

	public class APCollisionManager 
	{
		protected var _bodies	:APBodyList;
		
		public function APCollisionManager(pBodies:APBodyList) 
		{
			_bodies = pBodies;
		}
		
		public function updateBodyAt(bodyIndex:uint):void
		{
			
		}
		
		public function updateBody(body:APBody):void
		{
			// Compare it to all the other bodies because I'll do a quad tree later
			// TODO: Quadtree organisation
			var currentBodyNode:APBodyListNode = _bodies.first;
			var currentBody:APBody;
			var i:Number = -1;
			while (currentBodyNode != null)
			{
				i++;
				currentBody = currentBodyNode.body;
				if (currentBody != body)
				{
					// Silly test just to see if I can positionally compare bodies - I'm well aware how inaccurate and bad this is.
					if (Math.abs(body.y - currentBody.y) <= body.shape.centre.y * 2 && Math.abs(body.x - currentBody.x) <= body.shape.centre.x * 2)
					{
						body.velocity.x = 0;
						body.velocity.y = 0;
					}
				}
				currentBodyNode = currentBodyNode.next;
			}
			
			// Update the body as needed
			if (body.velocity.y > 0)
			{
				trace(Math.random().toPrecision(2) + "\tMoving body " + i + " plus " + body.velocity.y.toPrecision(3) + "[" + body.bodyType + "]");
			}
			
			body.position.x += body.velocity.x;
			body.position.y += body.velocity.y;
		}
		
		public function get bodies():APBodyList
		{
			return _bodies;
		}
	}
}