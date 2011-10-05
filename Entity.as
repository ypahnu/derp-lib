package au.net.mjt.learning
{
	import flash.display.*;
	
	/**
	 * ...
	 * @author matt
	 */
	
	public class Entity extends Sprite
	{
		
		protected var health:int = 100;
		
		function Entity(x:int, y:int):void
		{
			this.x = x;
			this.y = y;
		}
	}
	
}