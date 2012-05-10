package ActionPhysics.Math
{
    import flash.geom.Point;

    // TODO: See if it would be better to make this extend Point
    public class APVector2
    {
        protected var _x    :Number;
        protected var _y    :Number;
        
        public function APVector2(x:Number = 0, y:Number = 0):void
        {
            this.x = x;
            this.y = y;
        }
        
        public function toPoint():Point
        {
            return new Point(x,y);
        }
        
        public function get x():Number
        {
            return _x;
        }
        
        public function set x(x:Number):void
        {
            _x = x;
        }
        
        public function get y():Number
        {
            return _y;
        }
        
        public function set y(y:Number):void
        {
            retunr _y;
        }
    }
}