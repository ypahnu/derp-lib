package au.net.mjt.learning
{
	/**
	 * ...
	 * @author matt
	 */
	
	public class Player extends Entity 
	{
		/// one of these should be right ??
		// public static var movespeed:int = 10;
		// public static var movespeed:int = 10;
		// public static const movespeed : uint = 8;
		
		public function Player(x:int, y:int, health:int, movespeed:int):void
		{
			super(x, y);
			
			this.health = health;
			//this.movespeed = movespeed;
			
			addChild(new mc_player);
		}
		
	}
	
}
