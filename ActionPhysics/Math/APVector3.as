package ActionPhysics.Math
{
	public class APVector3
	{
		protected var _x	:Number;
		protected var _y	:Number;
		protected var _z	:Number;
		
		public function APVector3(x:Number = 0, y:Number = 0, z:Number = 0):void
		{
			_x = x;
			_y = y;
			_z = z;
		}
		
		public function copy():APVector3
		{
			return new APVector3(this.x, this.y, this.z);
		}
		
		public function multiply(n:Number):void
		{
			_x *= n;
			_y *= n;
			_z *= n;
		}
		
		public function divide(n:Number):void
		{
			_x /= n;
			_y /= n;
			_z /= n;
		}
		
		public function add(n:Number):void
		{
			_x += n;
			_y += n;
			_z += n;
		}
		
		public function subtract(n:Number):void
		{
			_x -= n;
			_y -= n;
			_z -= n;
		}
		
		public function multiplyVector(v:APVector3):void
		{
			_x *= v.x;
			_y *= v.y;
			_z *= v.z;
		}
		
		public function divideVector(v:APVector3):void
		{
			_x /= v.x;
			_y /= v.y;
			_z /= v.z;
		}
		
		public function addVector(v:APVector3):void
		{
			_x += v.x;
			_y += v.y;
			_z += v.z;
		}
		
		public function subtractVector(v:APVector3):void
		{
			_x -= v.x;
			_y -= v.y;
			_z -= v.z;
		}
		
		// These functions do NOT change the original vector and return the resulting vector only
		
		public function multiplied(n:Number):APVector3
		{
			return new APVector3(this.x * n, this.y * n, this.z * n);
		}
		
		public function divided(n:Number):APVector3
		{
			return new APVector3(this.x / n, this.y / n, this.z / n);
		}
		
		public function added(n:Number):APVector3
		{
			return new APVector3(this.x + n, this.y + n, this.z + n);
		}
		
		public function subtracted(n:Number):APVector3
		{
			return new APVector3(this.x - n, this.y - n, this.z - n);
		}
		
		public function multipliedVector(v:APVector3):APVector3
		{
			return new APVector3(this.x * v.x, this.y * v.y, this.z * v.z);
		}
		
		public function dividedVector(v:APVector3):APVector3
		{
			return new APVector3(this.x / v.x, this.y / v.y, this.z / v.z);
		}
		
		public function addedVector(v:APVector3):APVector3
		{
			return new APVector3(this.x + v.x, this.y + v.y, this.z + v.z);
		}
		
		public function subtractedVector(v:APVector3):APVector3
		{
			return new APVector3(this.x - v.x, this.y - v.y, this.z - v.z);
		}
		
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
		
		public function get z():Number
		{
			return _z;
		}
		
		public function set z(z:Number):void
		{
			_z = z;
		}
	}
}