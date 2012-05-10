package ActionPhysics.Math
{
    public class APGeometry
    {
        public static function radiansToDegrees(radians:Number):Number
        {
            return radians * (180 / Math.PI);
        }
        
        public static function degreesToRadians(degrees:Number):Number
        {
            return degrees * (Math.PI / 180);
        }
        
        // TODO: Furthest point from a particular point in a set of points
        // TODO: Closest point from a particular point in a set of points
        // TODO: Farthest away points in a set of points
        // TODO: Closest points in a set of points
    }
}