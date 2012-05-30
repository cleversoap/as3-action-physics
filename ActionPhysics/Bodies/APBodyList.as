package ActionPhysics.Bodies
{
	import ActionPhysics.Events.APBodyEvent;
	import flash.events.EventDispatcher;
	import flash.events.Event;
	
    public class APBodyList extends EventDispatcher
    {
		public static const EVENT_BODY_ADDED	:String = "APBodyList.BODY_ADDED";
		public static const EVENT_BODY_REMOVED	:String = "APBodyList.BODY_REMOVED";
		
        /// Easier than doing an iteration of the entire list to get the length, especially if there are a lot of bodies
        protected var _length   :uint;
        
        protected var _first    :APBodyListNode;
        protected var _last     :APBodyListNode;
    
        public function APBodyList(... bodies):void
        {
            _first = null;
            _last = null;
            _length = 0;
        }
        
		public function get first():APBodyListNode
		{
			return _first;
		}
		
		public function get last():APBodyListNode
		{
			return _last;
		}

        public function get length():uint
        {
            return _length;
        }
        
        public function addBody(newBody:APBody):void
        {
            this.addBodyNode(new APBodyListNode(newBody));
        }
        
        public function addBodyNode(newBodyNode:APBodyListNode):void
        {
            if (_first == null)
            {
                _first = newBodyNode;
            }
            else
            {
                _last.next = newBodyNode;
				newBodyNode.prev = _last;
                _last = newBodyNode;
            }
            
            _length++;
            
            if (this.length == 1)
                _last = _first;
				
			//this.dispatchEvent(new APBodyEvent(EVENT_BODY_ADDED, newBodyNode.body));
        }
        
        public function removeBody(delBody:APBody):void
        {
			removeBodyAt(indexOf(delBody));
        }
        
        public function removeBodyAt(delBodyIndex:uint):void
        {
			// Get the node to delete
			var delNode:APBodyListNode = bodyNodeAt(delBodyIndex);
			
			if (delNode != null)
			{
			
				// If the node to delete is the first one
				if (delBodyIndex == 0)
				{
					// If there is a second node
					if (delNode.next != null)
					{
						_first = delNode.next;
					}
				}
				
				// If the node to delete is the last one
				// TODO: Finish this implementation
				else if (delBodyIndex == _length - 1)
				{
					if (delNode.prev != null)
					{
						delNode.prev.next = null;
					}
				}
				
				// Normal node with a prev and a next
				else
				{
					delNode.prev.next = delNode.next;
				}
				
				_length--;
				
				// Dispatch the event
				//this.dispatchEvent(new APBodyEvent(EVENT_BODY_REMOVED, delNode.body));
				
				// Clear the node
				delNode = null;
			}
        }
        
        public function indexOf(body:APBody):uint
        {
            var currentNode:APBodyListNode = first;
			var counter:Number = -1;
			while (currentNode != null)
			{
				counter++;
				if (currentNode.body == body)
					break;
			}
			return counter;
        }
        
        public function bodyAt(bodyIndex:uint):APBody
        {
			return bodyNodeAt(bodyIndex).body;
        }
        
        protected function bodyNodeAt(bodyNodeIndex:uint):APBodyListNode
        {
            var currentNode:APBodyListNode = first;
			var counter:Number = -1;
			while (currentNode != null)
			{
				counter++;
				if (counter == bodyNodeIndex)
					break;
				else
					currentNode = currentNode.next;
			}
			return currentNode;
        }
    }
}