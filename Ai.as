package au.net.mjt.learning
{
	// something to test git 
	
	public class Ai
	{
		
		public function Ai():void
		{
			
		}
		
		
		
		/// static AI
		public static function aiStand(entNpc:Npc)
		{
			//entNpc.x = 175;
			//entNpc.y = 175;
		}
		
		// one example of an AI
		public static function aiNpcChasePlayer(entNpc:Npc, entPlaya:Player)
		{
			if (entNpc.x > entPlaya.x)
			{
				entNpc.x -= 2;
			}
			
			if (entNpc.y > entPlaya.y)
			{
				entNpc.y -= 2;
			}
			
			if (entNpc.x < entPlaya.x)
			{
				entNpc.x += 2;
			}
			
			if (entNpc.y < entPlaya.y)
			{
				entNpc.y += 2;
			}
			
			
			if (entNpc.x == entPlaya.x && entNpc.y == entPlaya.y)
			{
				//Learning.mcCaught.visible = true;
				//trace("caught by " + entNpc.name);
			}
			else
			{
				//Learning.mcCaught.visible = false;
			}
			
		}
		
				// one example of an AI
		public static function aiNpcChasePlayerSlow(entNpc:Npc, entPlaya:Player)
		{
			if (entNpc.x > entPlaya.x)
			{
				entNpc.x -= 1;
			}
			
			if (entNpc.y > entPlaya.y)
			{
				entNpc.y -= 1;
			}
			
			if (entNpc.x < entPlaya.x)
			{
				entNpc.x += 1;
			}
			
			if (entNpc.y < entPlaya.y)
			{
				entNpc.y += 1;
			}
			
			
			if (entNpc.x == entPlaya.x && entNpc.y == entPlaya.y)
			{
				//Learning.mcCaught.visible = true;
				//trace("caught by " + entNpc.name);
			}
			else
			{
				//Learning.mcCaught.visible = false;
			}
			
		}
		
		
		
		
	}
	
}
