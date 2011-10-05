package au.net.mjt.learning
{

	
	/**
	 * ...
	 * @author matt
	 */
	
	public class Npc extends Entity 
	{
		public function Npc(x:int, y:int, health:int, ai:Function):void
		{
			super(x, y);
			this.health = health;
			addChild(new mc_npc);
			
			// inits NPC movement
			startAI(ai1);
		}
		
		
		private function startAI(f:Function):void
		{
			f();
		}
		
		
		
		
		/// this is my ai function im passing to npc
		// not sure how to make this function public - making an AI class for ai behaviors
		// not sure where to put this
		public function ai1()
		{
			for (var i:int = 0; i < 100; i++)
			{
				trace("ai1(Npc.as) " + i.toString());
			}
		}
		
		public function ai2()
		{
			for (var i:int = 0; i < 100; i++)
			{
				trace("ai2(Npc.as) " + i.toString());
			}
		}
		

		
	}
	
}
