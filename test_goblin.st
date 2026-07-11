'From Squeak6.0 of 8 June 2026 [latest update: #22156] on 11 July 2026 at 11:25:42 am'!
Object subclass: #Goblin
	instanceVariableNames: 'ears'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dungeon-Game'!

!Goblin methodsFor: 'as yet unclassified' stamp: 'Yaroslav Kivaev 7/11/2026 11:15'!
ears: anEars
	ears := anEars! !


!Goblin methodsFor: 'printing' stamp: 'Yaroslav Kivaev 7/11/2026 11:25'!
hello
	Transcript show:  'hello'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Goblin class
	instanceVariableNames: ''!

!Goblin class methodsFor: 'as yet unclassified' stamp: 'Yaroslav Kivaev 7/11/2026 11:16'!
ears: anEars
	^ self new
	  ears: anEars;
	  yourself! !

