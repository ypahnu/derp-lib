package au.net.mjt.learning
{
	// something to test git .
	
	public class Player extends Entity 
	{
		public var movespeed:int;
		
		public function Player(x:int, y:int, health:int, movespd:int):void
		{
			// super get the fatures from Entity because it extended it
			super(x, y);
			
			this.health = health;
			this.movespeed = movespd;
			
			addChild(new mc_player);
		}
		
	}
	
}
