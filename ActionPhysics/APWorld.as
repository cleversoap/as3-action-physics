package ActionPhysics
{
    import ActionPhysics.Bodies.APBodyList;

    public class APWorld
    {
        //----------------------------------------------------------------[ MEMBERS ]
        
        protected var _gravity  :Number;
        
        //protected var _horizontalGravity:Number = 0;
        
        protected var _bodies   :APBodyList;
    
        //----------------------------------------------------------------[ CONSTRUCTOR ]
    
        public function APWorld(gravity:Number = 9.8):void
        {
            this.gravity = gravity;
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