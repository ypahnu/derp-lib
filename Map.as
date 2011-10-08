package au.net.mjt.learning
{
	// something to test git 
	
	import flash.display.*;
	 
	 
	public class Map extends Sprite
	{
		private var level:Array;
		
		function Map(x:int, y:int):void
		{
			level = Array2D(x, y);
			
			var r:int;
			
			// creating an array of 0,1 values for map
			for (var i:int = 0; i < y; i++)
			{
				for (var j:int = 0; j < x; j++)
				{
					r = Math.random() * 100;
					if (i == 0 || i ==y - 1 || j == 0 || j == x -1)
					{
						level[i][j] = 1;
						continue;
					}
					else if (r > 80)
					{
						level[i][j] = 1;
						continue;
					}
					level[i][j] = 0;
					
				}
			}
			
			// rendering to stage
			for (var i:int = 0; i < level.length; i++)
			{
				for (var j:int = 0; j < level[0].length; j++)
				{
					var mytile:Sprite;
					if (level[i][j] == 1)
					{
						 mytile = new mc_tile1();
					}
					else
					{
						mytile = new mc_tile2();
					}
					addChild(mytile);
					mytile.x = 50 * j;
					mytile.y = 50 * i;
				}
			}
			
		}
		
		
		
	}
	
}