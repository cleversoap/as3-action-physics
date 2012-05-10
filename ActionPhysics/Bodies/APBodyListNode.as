package ActionPhysics.Bodies
{
    public class APBodyListNode
    {
        protected var _body :APBody;
        protected var _next :APBodyListNode;
        
        // TODO: Either tacking on an APBody or another APBodyListNode as next
        public function APBodyListNode(body:APBody):void
        {
            this.body = body;
            this.next = null;
        }
        
        public function get hasBody():Boolean
        {
            return this.body == null;
        }
        
        public function get hasNext():Boolean
        {
            return this.next == null;
        }
        
        public function get body():APBody
        {
            return _body;
        }
        
        public function set body(newBody:APBody):void
        {
            _body = newBody;
        }
        
        public function get next():APBodyListNode
        {
            return _next;
        }
        
        public function set next(newNext:APBodyListNode):void
        {
            _next = newNext;
        }
    }
}