package ActionPhysics.Display 
{
	import ActionPhysics.Bodies.APBody;
	import ActionPhysics.Bodies.Shapes.APShapeCircle;
	import ActionPhysics.Bodies.Shapes.APShapePolygon;
	import ActionPhysics.Display.APSprite
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class APDebugSprite extends APSprite 
	{
		public function APDebugSprite(body:APBody) 
		{
			super(body);
			
			// Draw the vertexes by iterating over the points
			this.graphics.lineStyle(1,0xFFFFFF);
			this.graphics.beginFill(0x0000FF,0.5);
			
			
			// If it is a circle then draw a circle
			if (_body.shape is APShapeCircle)
			{
				// Draw Circle
			}
			// Draw polygon shape
			else
			{
				var shape:APShapePolygon = _body.shape as APShapePolygon;
				
				// Vertexes
				this.graphics.moveTo(shape.points[0].x, shape.points[0].y);
				for each (var point:Point in shape.points)
					this.graphics.lineTo(point.x, point.y);
					
				// Verticies
				for each (var vert:Point in shape.points)
				{
					var dot:Sprite = pointDot();
					dot.x = vert.x - 2;
					dot.y = vert.y - 2;
					//this.addChild(dot)
				}
			}
			this.graphics.endFill();
			
			// Centroid
			//this.addChild(makeCentroid());
		}
		
		protected function pointDot():Sprite
		{
			var dot = new Sprite();
			dot.graphics.beginFill(0xBBFF00);
			dot.graphics.drawRect(0,0,4,4);
			dot.graphics.endFill();
			return dot;
		}
		
		protected function makeCentroid():Sprite
		{
			var centroid:Sprite = new Sprite();
			centroid.graphics.lineStyle(1, 0xFF0000);
			centroid.graphics.moveTo(0,4);
			centroid.graphics.lineTo(0, -4);
			centroid.graphics.moveTo( -4, 0);
			centroid.graphics.lineTo(4, 0);
			centroid.graphics.endFill();
			centroid.x = _body.shape.centre.x;
			centroid.y = _body.shape.centre.y;
			return centroid;
		}
	}

}