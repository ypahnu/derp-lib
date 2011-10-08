package au.net.mjt.learning
{
	// something to test git .
	
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	
	public class Input
	{
		//array[256]
		/// new keys array
		public static var keys:Array = new Array(256);
		
		
		public function Input():void
		{
			
		}
		
		
		
		
		
		/// new handlers
		public static function keyDownHandler(obj:KeyboardEvent):void
		{
			///trace(obj.keyCode);
			keys[obj.keyCode] = true;
		}
		
		public static function keyUpHandler(obj:KeyboardEvent):void
		{
			keys[obj.keyCode] = false;
		}
		
		
		
		
		
		/// new isDown() isUp() functions
		/// the ... is new to me but looks like it means you can give a list
		public static function isDown(keyCode:uint, ...keyCodes):Boolean
		{
			if (keyCodes.length == 0)
			{
				return keys[keyCode];
			}
			else
			{
				if (!keys[keyCode])
				{
					return false;
				}
				
				
				for(var i:uint = 0; i<keyCodes.length; ++i)
				{
					if (!keys[keyCodes[i]])
					{
						return false;
					}
				}
				
				return true;
			}
		}
		
		public static function isUp(keyCode:uint, ...keyCodes):Boolean
		{
			if (keyCodes.length == 0)
			{
				return !keys[keyCode];
			}
			else
			{
				if(keys[keyCode]) return false;
				
				for(var i:uint = 0; i<keyCodes.length; ++i)
				{
					if (keys[keyCodes[i]])
					{
						return false;
					}
				}
				
				return true;
			}
		}
		
		
		
		
		/// Mouse handlers (currently not used)
		public static function mouseScrollHandler(e:MouseEvent)
		{
			
		}
		
		public static function mouseMoveHandler(e:MouseEvent)
		{
			
		}
		
		
		
		
			
		
		
		
	}
}