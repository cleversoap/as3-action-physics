package ActionPhysics.Collision 
{
	import ActionPhysics.Bodies.APBody;
	import ActionPhysics.Bodies.APBodyList;
	import ActionPhysics.Bodies.APBodyListNode;
	import ActionPhysics.Bodies.Shapes.APShapeRectangle;
	import ActionPhysics.Events.APBodyEvent;
	import flash.geom.Point;

	public class APCollisionManager 
	{
		protected var _bodies	:APBodyList;
		
		public function APCollisionManager(pBodies:APBodyList) 
		{
			_bodies = pBodies;
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
					// If comparing square to square
					if (body.shape is APShapeRectangle && currentBody.shape is APShapeRectangle)
					{
						var p1:Point = new Point((body.x - body.shape.centre.x) + body.velocity.x, (body.y - body.shape.centre.y) + body.velocity.y);
						var p2:Point = new Point(currentBody.x - currentBody.shape.centre.x, currentBody.y - currentBody.shape.centre.y);
						var w1:Number = (body.shape as APShapeRectangle).width;
						var h1:Number = (body.shape as APShapeRectangle).height;
						var w2:Number = (currentBody.shape as APShapeRectangle).width;
						var h2:Number = (currentBody.shape as APShapeRectangle).height;
						
						if (p1.x + w1 > p2.x)
						{
							if (p1.x < p2.x + w2)
							{
								if (p1.y + h1 > p2.y)
								{
									if (p1.y < p2.y + h2)
									{
										// TODO: Vector aware collisions
										body.velocity.y = 0;
										//body.velocity.y = (currentBody.y - currentBody.shape.centre.y) - (body.y + body.shape.centre.y);
										body.position.y = (currentBody.y - currentBody.shape.centre.y) - body.shape.centre.y;
									}
								}
							}
						}
					}
				}
				currentBodyNode = currentBodyNode.next;
			}
			
			// Update the body as needed
			/*
			if (body.velocity.y > 0)
			{
				trace(Math.random().toPrecision(2) + "\tMoving body " + i + " plus " + body.velocity.y.toPrecision(3));
			}*/
			
			body.position.x += body.velocity.x;
			body.position.y += body.velocity.y;
		}
		
		public function get bodies():APBodyList
		{
			return _bodies;
		}
	}
}