package au.net.mjt.learning
{

	
	/**
	 * ...
	 * @author matt
	 */
	
	public class Ai
	{

		
		public function Ai():void
		{
			/// can i somehow have a class of ai functions without a constructor
			trace("AI constructor");
		}
		
		
		
		
		/// this is my ai function which gets passed to NPC
		// not sure where to put this
		public function ai1()
		{
			// real logic later, this is so i know something is running
			for (var i:int = 0; i < 100; i++)
			{
				trace("ai1(Ai.as) " + i.toString());
			}
		}
		
		public static function ai2()
		{
			// real logic later, this is so i know something is running
			for (var i:int = 0; i < 100; i++)
			{
				trace("ai2(Ai.as) " + i.toString());
			}
		}
		
		
		
		/// i should have a game loop instead that does (but where do i put it)
		// update player pos
		// update ai
		// collisions etc
		
		
		// CHANGED
		// change 2
		
	}
	
}
