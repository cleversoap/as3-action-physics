package ActionPhysics.Bodies
{
    public class APBodyList
    {
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
                _last = _last.next;
            }
            
            _length++;
            
            if (this.length == 1)
                _last = _first;
        }
        
        public function removeBody(delBody:APBody):void
        {
            _length--;
        }
        
        public function removeBodyAt(delBodyIndex:uint):void
        {
            _length--;
        }
        
        public function indexOf(body:APBody):uint
        {
            return 0;
        }
        
        public function bodyAt(bodyIndex:uint):APBody
        {
            return new APBody();
        }
        
        public function bodyNodeAt(bodyNodeIndex:uint):APBodyListNode
        {
            return new APBodyListNode(null);
        }
    }
}