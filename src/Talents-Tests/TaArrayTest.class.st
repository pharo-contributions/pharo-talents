Class {
	#name : #TaArrayTest,
	#superclass : #TaAbstractTalentTest,
	#category : #'Talents-Tests'
}

{ #category : #tests }
TaArrayTest >> testInitializeSlot [
	| x |
	x := {1. 2. 3}.
	x addTalent: taTalentWithASlotInitialized.

	self assert: x aSlot equals: 55.
	self assert: (x at:1) equals: 1.
	self assert: (x at:2) equals: 2.
	self assert: (x at:3) equals: 3.		
]
