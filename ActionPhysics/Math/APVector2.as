package ActionPhysics.Math
{
    import flash.geom.Point;

    // TODO: See if it would be better to make this extend Point
    public class APVector2
    {
		protected var _x		:Number;
		protected var _y		:Number;
        
        public function APVector2(x:Number = 0, y:Number = 0):void
        {
			_x = x;
			_y = y;
        }
        
		public function copy():APVector2
		{
			return new APVector2(this.x, this.y);
		}
		
		// Vector2 especially shares some commonality with Points
		
		public static function fromPoint(point:Point):APVector2
		{
			return new APVector2(point.x,point.y);
		}

        public function toPoint():Point
        {
            return new Point(this.x,this.y);
        }

		// These functions do change the original vector
		
		public function multiply(n:Number):void
		{
			_x *= n;
			_y *= n;
		}
		
		public function divide(n:Number):void
		{
			_x /= n;
			_y /= n;
		}
		
		public function add(n:Number):void
		{
			_x += n;
			_y += n;
		}
		
		public function subtract(n:Number):void
		{
			_x -= n;
			_y -= n;
		}
		
		// These functions do change the original vector and will need to be overridden
		
		public function multiplyVector(v:APVector2):void
		{
			_x *= v.x;
			_y *= v.y;
		}
		
		public function divideVector(v:APVector2):void
		{
			_x /= v.x;
			_y /= v.y;
		}
		
		public function addVector(v:APVector2):void
		{
			_x += v.x;
			_y += v.y;
		}
		
		public function subtractVector(v:APVector2):void
		{
			_x -= v.x;
			_y -= v.y;
		}
		
		// These functions do NOT change the original vector and return the resulting vector only
		
		public function multiplied(n:Number):APVector2
		{
			return new APVector2(this.x * n, this.y * n);
		}
		
		public function divided(n:Number):APVector2
		{
			return new APVector2(this.x / n, this.y / n);
		}
		
		public function added(n:Number):APVector2
		{
			return new APVector2(this.x + n, this.y + n);
		}
		
		public function subtracted(n:Number):APVector2
		{
			return new APVector2(this.x - n, this.y - n);
		}
		
		public function multipliedVector(v:APVector2):APVector2
		{
			return new APVector2(this.x * v.x, this.y * v.y);
		}
		
		public function dividedVector(v:APVector2):APVector2
		{
			return new APVector2(this.x / v.x, this.y / v.y);
		}
		
		public function addedVector(v:APVector2):APVector2
		{
			return new APVector2(this.x + v.x, this.y + v.y);
		}
		
		public function subtractedVector(v:APVector2):APVector2
		{
			return new APVector2(this.x - v.x, this.y - v.y);
		}
        
		// X & Y are common to both Vector2 and Vector3
		
        public function get x():Number
        {
            return _x;
        }
        
        public function set x(newX:Number):void
        {
			_x = newX;
        }
        
        public function get y():Number
        {
            return _y;
        }
        
        public function set y(newY:Number):void
        {
            _y = newY;
        }
    }
}