package ActionPhysics.Bodies
{
    import flash.events.EventDispatcher;
    import flash.geom.Point;

    public class APBody extends EventDispatcher
    {
        public static const FIXED   :String = "FIXED";
        public static const RIGID   :String = "RIGID";
        public static const SOFT    :String = "SOFT";
        
        protected var _mass     :Number;
        
        protected var _position :Point;
        
        public function APBody():void
        {
        }
    }
}