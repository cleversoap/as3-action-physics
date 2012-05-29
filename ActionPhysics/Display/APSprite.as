package ActionPhysics.Display
{
	import flash.display.Sprite;
	
	import ActionPhysics.Bodies.APBody;

	public class APSprite extends Sprite
	{
		protected var _body:APBody;
		
		public function APSprite(body:APBody)
		{
			super();
			_body = body;
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

