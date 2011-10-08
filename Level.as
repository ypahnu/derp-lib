package au.net.mjt.learning
{
	// something to test git .
	
	import flash.display.Sprite;
	
	class Level extends Sprite
	{
		private var map:Map = null;
		private var entity_system:EntitySystem = new EntitySystem();
		
		public function Level(x:int, y:int):void
		{
			map = new Map(x, y);
			var player:Player = new Player(200, 200, 100, 20);
			player.name = "Playa";
			entity_system.AddEntity(player);
			this.addChild(player);
		}
		
		
	}
}