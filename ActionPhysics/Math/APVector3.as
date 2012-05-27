package ActionPhysics.Math
{
	public class APVector3 extends APVector2
	{
		protected var _z	:Number;
		
		public function APVector3(x:Number = 0, y:Number = 0, z:Number = 0):void
		{
			super(x,y);
			_values.push(z);
		}
		
		public function get z():Number
		{
			return _values[2];
		}
		
		public function set z(z:Number):void
		{
			_values[2] = z;
		}
	}
}