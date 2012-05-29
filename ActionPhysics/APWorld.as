package ActionPhysics
{
	import flash.events.EventDispatcher;
	import flash.events.Event;
	import flash.utils.getTimer;
	
	import ActionPhysics.Bodies.APBody;
    import ActionPhysics.Bodies.APBodyList;
	import ActionPhysics.Bodies.APBodyListNode;

    public class APWorld extends EventDispatcher
    {
		//----------------------------------------------------------------[ EVENTS ]
		
		[Event(name="APWorld.UPDATE_STARTING", type="flash.events.Event")]
		public static const EVENT_UPDATE_STARTING	:String = "APWorld.UPDATE_STARTING";
		
		[Event(name="APWorld.UPDATE_COMPLETE", type="flash.events.Event")]
		public static const EVENT_UPDATE_COMPLETE	:String = "APWorld.UPDATE_COMPLETE";
		
        //----------------------------------------------------------------[ MEMBERS ]
        
		protected var _gravity	:Number;
        
        //protected var _horizontalGravity:Number = 0;
        
        protected var _bodies	:APBodyList;

		protected var _p2m		:Number;
		
		// Time stepping
		protected var _timer	:int;
		protected var _dTime	:int;
    
        //----------------------------------------------------------------[ CONSTRUCTOR ]
    
        public function APWorld(pixelsToMetre:Number = 1, gravity:Number = 9.8):void
        {
            this.gravity = gravity;
			_p2m = pixelsToMetre;
			_bodies = new APBodyList();
        }
        
		//----------------------------------------------------------------[ PUBLIC FUNCTIONS ]
		
		public function update():void
		{
			this.dispatchEvent(new Event(APWorld.EVENT_UPDATE_STARTING));
			
			// Update the delta time
			_dTime = getTimer() - _timer;
			_timer = getTimer();
			
			var currentBodyNode:APBodyListNode = _bodies.first;
			var currentBody:APBody;
			while(currentBodyNode != null)
			{
				// Update the current body
				currentBody = currentBodyNode.body;
				
				// TODO: Right now it's just a gravity falling test, no collision.
				if (currentBody.bodyType != APBody.FIXED)
				{
					currentBody.velocity.y += _gravity * (_dTime / 1000) * _p2m;
					currentBody.y += currentBody.velocity.y;
					currentBody.rotation += 1;
				}
				// Set the current body node to the next one
				// TODO: See if hasNext should be used here?
				currentBodyNode = currentBodyNode.next;
			}
			this.dispatchEvent(new Event(APWorld.EVENT_UPDATE_COMPLETE));
		}
		
		// TODO: This may be removed later because it isn't flexible enough - I want to be able to specify any body type
		public function makeBody():APBody
		{
			var newBody:APBody = new APBody(APBody.RIGID);
			this._bodies.addBody(newBody);
			return newBody;
		}
		
		// Returns the new body so that creation and insertion into the physics engine can be done in one step
		// eg. var newBody:APBody = _world.addBody(new APBody());
		public function addBody(newBody:APBody):APBody
		{
			this._bodies.addBody(newBody);
			return newBody;
		}

        //----------------------------------------------------------------[ PROPERTIES ]
        
        public function get gravity():Number
        {
            return _gravity;
        }
        
        public function set gravity(newGravity:Number):void
        {
            _gravity = newGravity;
        }

		public function get bodies():APBodyList
		{
			return _bodies;
		}
    }
}