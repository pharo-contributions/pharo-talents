Class {
	#name : #TaTalentSlotsTests,
	#superclass : #TaAbstractTalentTest,
	#category : 'Talents-Tests'
}

{ #category : #tests }
TaTalentSlotsTests >> testInitializeSlot [
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized.

	self assert: x anSlot equals: 55.
]

{ #category : #tests }
TaTalentSlotsTests >> testRenameKeepingOrderSlot [
	| x t1 |
	x := Object new.
	t1 := self newTalent: #T1 with: #(first second third fourth).
	
	x addTalent: (t1 asTraitComposition >> (#second -> #otherName)) >> (#fourth -> #last).

	self assert: x class allInstVarNames equals: #(first otherName third last).
	self assert: (x class instVarIndexFor: #first) equals: 1.
	self assert: (x class instVarIndexFor: #otherName) equals: 2.
	self assert: (x class instVarIndexFor: #third) equals: 3.
	self assert: (x class instVarIndexFor: #last) equals: 4.

]

{ #category : #tests }
TaTalentSlotsTests >> testRenameSlot [
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized asTraitComposition >> (#anSlot -> #otherName).

	self assert: x anSlot equals: 55.
	self assert: (x instVarNamed: #otherName) equals: 55.
	self should: [ x instVarAt: #anSlot ] raise: Error
]

{ #category : #tests }
TaTalentSlotsTests >> testSimpleSlot [
	| x |
	x := Object new.
	x addTalent: taTalentWithASlot.

	x anSlot: 23.
	self assert: x anSlot equals: 23.
]

{ #category : #tests }
TaTalentSlotsTests >> testTalentSequenceInitialization [
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized asTraitComposition + taAnotherInitializedSlot asTraitComposition.

	self assert: x anSlot equals: 55.
	self assert: x anotherSlot equals: 93.
]
