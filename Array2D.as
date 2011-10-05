package au.net.mjt.learning
{
	public function Array2D(x:int, y:int):Array
	{
		var ret:Array = new Array(y);
		for (var i:int = 0; i < y; i++)
		{
			ret[i] = new Array(x);
		}
		return ret;
	}
}