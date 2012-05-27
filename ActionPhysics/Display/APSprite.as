package ActionPhysics.Display.APSprite
{
	import flash.display.Sprite;
	
	import ActionPhysics.Bodies.APBody;

	public class APSprite extends Sprite
	{
		protected var _body:APBody;
		
		public function APSprite()
		{
			super();
		}
		
		public function get body():APBody
		{
			return _body;
		}
	}
}

