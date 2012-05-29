package ActionPhysics.Display
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
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
			this.rotation = _rotation - _body.rotation;
		}
		
		public override function get rotation():Number
		{
			return _body.rotation;
		}
		
		public override function set rotation(newRotation:Number):void
		{
			var m:Matrix=this.transform.matrix;
		    m.tx -= this.body.shape.centre.x;
		    m.ty -= this.body.shape.centre.y;
		    m.rotate(newRotation * (Math.PI/180)); // was a missing "=" here
		    m.tx += this.body.shape.centre.x;
		    m.ty += this.body.shape.centre.y;
		    this.transform.matrix=m;
			_rotation -= newRotation;
		}
	}
}

