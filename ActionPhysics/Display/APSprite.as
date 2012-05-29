package ActionPhysics.Display
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import fl.motion.MatrixTransformer;
	
	import ActionPhysics.Bodies.APBody;

	public class APSprite extends Sprite
	{
		protected var _body:APBody;
		
		protected var _rotation:Number;
		
		public function APSprite(body:APBody)
		{
			super();
			_body = body;
			_rotation = _body.rotation;
		}
		
		public function get body():APBody
		{
			return _body;
		}
		
		public function update():void
		{
			this.x = _body.x;
			this.y = _body.y;
			this.rotation = _body.rotation;
		}
	}
}

