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
			rotate(this, _body.rotation - _rotation);
			this.y += 1;
		}
		
		public override function get rotation():Number
		{
			return _rotation;
		}
		
		function rotate(ob:DisplayObject, angle:Number):void
		{
			var mat:Matrix = ob.transform.matrix.clone();
			MatrixTransformer.rotateAroundInternalPoint(mat, _body.shape.centre.x, _body.shape.centre.y, angle);
			ob.transform.matrix = mat;
			_rotation = _body.rotation;
		}
	}
}

