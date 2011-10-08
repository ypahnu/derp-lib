package au.net.mjt.learning
{

	// something to test git .
	
	public class Npc extends Entity 
	{
		private var logic:Function;
		
		public function Npc(x:int, y:int, health:int, ai:Function):void
		{
			super(x, y);
			this.health = health;
			addChild(new mc_npc);
			
			logic = ai;
			// inits NPC movement
			startAI();
		}
		
		
		private function startAI():void
		{
			logic(this);
		}
		
		
	}
	
}
