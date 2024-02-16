;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname AUS_QF_AUSPutARingOnIt_01000D62 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Sword_Keeper_Ring
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Sword_Keeper_Ring Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ruta
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ruta Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Siddgeir
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Siddgeir Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteAliasRef
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteAliasRef Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gavril
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gavril Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE CourierScript
Quest __temp = self as Quest
CourierScript kmyQuest = __temp as CourierScript
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(20)
Alias_Ruta.GetReference().AddItem(Alias_Sword_Keeper_Ring.GetReference())
Game.GetPlayer().AddItem(Gold001, 300)

kmyQuest.AUSQuest
kmyQuest.Stage30Complete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
RutaLocation.AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_Gavril.GetReference().Enable()
DungeonLocation.AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property DungeonLocation  Auto  

ObjectReference Property RutaLocation  Auto  

MiscObject Property Gold001  Auto  
