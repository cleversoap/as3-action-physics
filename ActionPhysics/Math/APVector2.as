package ActionPhysics.Math
{
    import flash.geom.Point;

    // TODO: See if it would be better to make this extend Point
    public class APVector2
    {
        protected var _values	:Array;
        
        public function APVector2(x:Number = 0, y:Number = 0):void
        {
			_values = new Array();
            _values.push(x);
			_values.push(y);
        }
        
		public static function fromPoint(point:Point):APVector2
		{
			return new APVector2(point.x,point.y);
		}

        public function toPoint():Point
        {
            return new Point(this.x,this.y);
        }

		public function multiply(n:Number):void
		{
			_values = _values.map(function(element:*, index:int, arr:Array){return element * n;});
		}
		
		public function divide(n:Number):void
		{
			_values = _values.map(function(element:*, index:int, arr:Array){return element / n;});
		}
		
		public function add(n:Number):void
		{
			_values = _values.map(function(element:*, index:int, arr:Array){return element + n;});
		}
		
		public function subtract(n:Number):void
		{
			_values = _values.map(function(element:*, index:int, arr:Array){return element - n;});
		}
        
        public function get x():Number
        {
            return _values[0];
        }
        
        public function set x(x:Number):void
        {
            _values[0] = x;
        }
        
        public function get y():Number
        {
            return _values[1];
        }
        
        public function set y(y:Number):void
        {
            _values[1] = y;
        }
    }
}