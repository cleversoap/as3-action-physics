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
		
		[Event(name="worldUpdateStarting", type="flash.events.Event")]
		[Event(name="worldUpdateComplete", type="flash.events.Event")]
		
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