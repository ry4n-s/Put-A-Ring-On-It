Scriptname RutaDeath extends ReferenceAlias  

Quest Property RutaDeathQuestFail  Auto  

Event OnDeath(Actor akKiller)
	if (!RutaDeathQuestFail.IsCompleted())
		RutaDeathQuestFail.SetStage(200)
	endif
EndEvent