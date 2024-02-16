Scriptname CourierScript extends Quest  

Quest Property AUSQuest  Auto  
ReferenceAlias Property AUSNote  Auto  
Book Property AUSRutaNote Auto
Quest Property WICourier Auto
MiscObject Property Gold001  Auto  


Event Stage30Complete()
	 RegisterForSingleUpdateGameTime(168.0)
EndEvent

Event OnUpdateGameTime()
	AUSNote.GetReference().Enable()
	AUSNote.ForceRefTo(Game.GetPlayer().PlaceAtMe(AUSRutaNote))
	(WICourier as WICourierScript).AddAliasToContainer(AUSNote)
EndEvent

