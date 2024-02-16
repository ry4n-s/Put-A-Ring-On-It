Scriptname RingScript extends ReferenceAlias  

Quest Property AdvanceQuest  Auto  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if (newContainer == Game.GetPlayer())
             AdvanceQuest.SetObjectivedisplayed(20)
		AdvanceQuest.SetStage(20)
	endif
EndEvent