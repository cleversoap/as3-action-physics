package ActionPhysics
{
	import flash.events.EventDispatcher;
	import flash.events.Event;
	
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
        
        protected var _gravity  :Number;
        
        //protected var _horizontalGravity:Number = 0;
        
        protected var _bodies   :APBodyList;
    
        //----------------------------------------------------------------[ CONSTRUCTOR ]
    
        public function APWorld(gravity:Number = 9.8):void
        {
            this.gravity = gravity;

			_bodies = new APBodyList();
        }
        
		//----------------------------------------------------------------[ PUBLIC FUNCTIONS ]
		
		public function update():void
		{
			// TODO: Dispatch update starting event.
			this.dispatchEvent(new Event(APWorld.EVENT_UPDATE_STARTING));
			
			var currentBodyNode:APBodyListNode = _bodies.first;
			var currentBody:APBody;
			while(currentBodyNode != null)
			{
				// Update the current body
				currentBody = currentBodyNode.body;
				
				// Set the current body node to the next one
				// TODO: See if hasNext should be used here?
				currentBodyNode = currentBodyNode.next;
			}
			
			// TODO: Dispatch update complete event.
			this.dispatchEvent(new Event(APWorld.EVENT_UPDATE_COMPLETE));
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
    }
}