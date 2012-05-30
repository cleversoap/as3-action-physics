package ActionPhysics.Events 
{
	import ActionPhysics.Bodies.APBody;
	
	import flash.events.Event;
	
	public class APBodyEvent extends Event
	{	
		protected var _body	:APBody;
		
		public function APBodyEvent(type:String, body:APBody) 
		{
			super(type);
			_body = body;
		}
		
		public function get body():APBody
		{
			return _body;
		}
	}

}