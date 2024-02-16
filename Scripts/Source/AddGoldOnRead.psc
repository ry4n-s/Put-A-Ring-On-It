Scriptname AddGoldOnRead extends ObjectReference  

MiscObject Property Gold001  Auto  

event onRead()
	Game.GetPlayer().AddItem(Gold001, 1000)
endEvent

