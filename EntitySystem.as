package au.net.mjt.learning
{
	// something to test git .
	
	class EntitySystem
	{
		// a list of all gentities, eg player, npc, trigger
		protected var vec:Vector.<Entity> = new Vector.<Entity>();
		
		
		public function EntitySystem():void
		{
			//init shit here
		}
		
		public function AddEntity(ent:Entity):Boolean
		{
			return vec.length != vec.push(ent);
		}
		
		public function RemoveEntity(ent:Entity):Boolean
		{
			for (var i:int = 0; i < vec.length; i++)
			{
				if (vec[i] == ent)
				{
					delete vec[i];
					return true;
				}
			}
			return false;
		}
		
		public function GetEntity(name:String):Entity
		{
			for (var i:int = 0; i < vec.length; i++)
			{
				if (vec[i].name == name)
				{
					return vec[i];
				}
			}
			return null;
		}
		
	}
}