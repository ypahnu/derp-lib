package au.net.mjt.learning
{
	
	import flash.display.*;
	import flash.events.*;
	 
	public class Learning extends Sprite
	{
		
		var universeContainer:DisplayObjectContainer;
		
		
		var ma_world:Map;
		var ma_player:Player;
		var ma_npc:Npc;
		
		
		/// Main
		public function Learning():void
		{
			// Fires when added to stage - especially useful if loading this app from another swf
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		
		
		
		/// Added to stage - runs once then killed
		private function onAddedToStage(e:Event):void
		{
			// stage added, kill event listener
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			/// Now we have a reference to STAGE
			stage.scaleMode = StageScaleMode.NO_SCALE; // Dont want the stage being scaled
			stage.align = StageAlign.TOP_LEFT; // 0,0 at top left then 
			
			/// INIT
			initUniverse();
		}
		
		/// Init Universe (the whole 'god' damn thing)
		private function initUniverse():void
		{
			initInputListeners();
			initScreenListeners();
			
			/// This holds the whole game world
			addChild(universeContainer);
			
			
			initWorld();
		}
		
		
		
		
		/// timer or enterframe ? (enterframe for stage3D apparently)
		/// temp - using enterframe to trigger gameLoop
		private function enterFrameHandler(e:Event):void 
		{
			gameLoop();
		}
		
		
		
		
		/// temp game loop
		// should be in game class too i guess
		private function gameLoop():void 
		{
			/// move entities (player only currently)
				//              left                  a
				if (Input.isDown(37) || Input.isDown(65))
				{
					ma_player.x -= ma_player.movespeed;
				}
				
				//             right                  d
				if (Input.isDown(39) || Input.isDown(68))
				{
					ma_player.x += ma_player.movespeed;
				}
				
				//               up                   w
				if (Input.isDown(38) || Input.isDown(87))
				{
					ma_player.y -= ma_player.movespeed;
				}
				
				//              down                  s
				if (Input.isDown(40) || Input.isDown(83))
				{
					ma_player.y += ma_player.movespeed;
				}
			
			
			/// lol checking 2 keys at once :)
			// if (Input.isDown(37, 40))
			// {
			// 	ma_player.x = 0;
			// }
			
			
			/// Render game
			// renderGame();
			
			
		}
		
		
		
		
		
		/// Screen listeners for stage
		private function initScreenListeners():void
		{
			// screen resize
			stage.addEventListener(Event.RESIZE, resizeHandler);
			
			// enterframe listener
			stage.addEventListener(Event.ENTER_FRAME, enterFrameHandler);
		}
		
		private function resizeHandler(e:Event):void 
		{
			trace("window was resized");
		}
		
		private function toggleFullscreen(e:MouseEvent)
		{
			//normal mode, enter fullscreen mode
			if (stage.displayState == StageDisplayState.NORMAL)
			{
				//set stage display state
				stage.displayState = StageDisplayState.FULL_SCREEN;
			}
			//fullscreen mode, enter normal mode
			else if (stage.displayState == StageDisplayState.FULL_SCREEN)
			{
				//set stage display state
				stage.displayState = StageDisplayState.NORMAL;
			}
		}
		
		
		
		
		/// Input listeners on stage
		private function initInputListeners():void
		{
			// mouse scroll
			stage.addEventListener(MouseEvent.MOUSE_WHEEL, Input.mouseScrollHandler);
			
			// captures mouse data
			stage.addEventListener(MouseEvent.MOUSE_MOVE, Input.mouseMoveHandler); 
			
			// keys on stage
			stage.addEventListener(KeyboardEvent.KEY_UP, Input.keyUpHandler);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, Input.keyDownHandler);
		}
		
		
		
		
		/// currently this addsall the entities to the map
		// this should be a new Game Class
		private function initWorld():void
		{
			// world
			ma_world = new Map(10, 10);
			universeContainer.addChild(ma_world);
			
			// player
			//                      x    y  heal  spd
			ma_player = new Player(125, 175, 100, 3);
			ma_player.name = "Playa";
			universeContainer.addChild(ma_player);
			
			// npc
			//                x    y  heal   ai
			ma_npc = new Npc(275, 275, 90, Ai.ai1);
			ma_npc.name = "Beastie";
			universeContainer.addChild(ma_npc);
		}
		
		

		
	}
	
}