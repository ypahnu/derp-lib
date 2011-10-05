package au.net.mjt.learning
{
	
	/**
	 * ...
	 * @author matt
	 */
	 
	import flash.display.*;
	import flash.events.KeyboardEvent;
	import flash.events.*;
	import flash.ui.Keyboard;
	 
	public class Learning extends Sprite
	{
		var ma_world:Map;
		
		var ma_player:Player;
		
		var ma_npc:Npc;
		
		/// i dont want this defined here, i want it in player as a property
		const moveSpeed:int = 10;
		
		
		public function Learning():void
		{
			// this stuff should be initWorld()
			
			// world
			ma_world = new Map(10, 10);
			addChild(ma_world);
			
			// player
			//                      x    y  heal  spd
			ma_player = new Player(125, 175, 100, 5);
			addChild(ma_player);
			
			
			// npc
			//                x    y  heal   ai
			ma_npc = new Npc(275, 275, 90, Ai.ai2);
			addChild(ma_npc);
			
			// setup input handler
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
		}
		
		
		
		
		// input handlers
		// this all needs to go into an inputs class
		private function keyDownHandler(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.LEFT)
			{
				/// mother fucker how do i get this variable to work (public ?)
				//ma_player.x -= Player.movespeed;
				
				ma_player.x -= moveSpeed;
				//ma_player.x -= 1;
			}
			
			if (e.keyCode == Keyboard.RIGHT)
			{
				ma_player.x += moveSpeed;
			}
			
			if (e.keyCode == Keyboard.UP)
			{
				ma_player.y -= moveSpeed;
			}
			
			if (e.keyCode == Keyboard.DOWN)
			{
				ma_player.y += moveSpeed;
			}
		}
			
		
		
	}
	
}