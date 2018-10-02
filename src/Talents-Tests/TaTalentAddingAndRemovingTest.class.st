Class {
	#name : #TaTalentAddingAndRemovingTest,
	#superclass : #TaAbstractTalentTest,
	#category : 'Talents-Tests'
}

{ #category : #tests }
TaTalentAddingAndRemovingTest >> testAddingASecondTalentDoNotReinitializeTheFirst [
	| x t1 t2 |
	x := Object new.
	
	t1 := self newTalent: #T1 with: #(t1Slot).
	t1 compile: ' initializeTalent 
		t1Slot ifNotNil:[t1Slot:= t1Slot + 1] ifNil:[ t1Slot := 1]
	'.
	
	
	t2 := self newTalent: #T2 with: #(t2Slot).
	t2 compile: ' initializeTalent 
		t2Slot ifNotNil:[t2Slot:= t2Slot + 3] ifNil:[ t2Slot := 7]
	'.
	
	x addTalent: t1.
	
	self assert: (x instVarNamed: #t1Slot) equals: 1.
	self should: [x instVarNamed: #t2Slot] raise: Error.
	
	x addTalent: t2.
	
	self assert: (x instVarNamed: #t1Slot) equals: 1.
	self assert: (x instVarNamed: #t2Slot) equals: 7.

]

{ #category : #tests }
TaTalentAddingAndRemovingTest >> testRemovingADepthAliasTalent [
	| x |
	x := Object new.

	x addTalent: taTestTalent.
	x addTalent: (taRecursiveMethodTalent asTraitComposition @= {#mRecursive: -> #someRecursive:}).

	self assert: x someMessage equals: 42.
	self assert: (x mRecursive:5 ) equals: 15.

	x removeTalent: taRecursiveMethodTalent.
	self assert: x someMessage equals: 42.
	self should: [ x mRecursive:5 ] raise: Error.
]

{ #category : #tests }
TaTalentAddingAndRemovingTest >> testRemovingASingleTalent [
	| x |
	x := Object new.
	
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	
	x removeTalent: taTestTalent.
	self should:[x someMessage] raise: MessageNotUnderstood.
	self assert:x class == Object.
]

{ #category : #tests }
TaTalentAddingAndRemovingTest >> testRemovingAnAliasTalent [
	| x |
	x := Object new.

	x addTalent: taTestTalent.
	x addTalent: taTestTalentWithTwoMethods asTraitComposition @ {#m1 -> #aM1}.

	self assert: x someMessage equals: 42.
	self assert: x m1 equals: 42.
	self assert: x aM2 equals: 22.

	x removeTalent: taTestTalentWithTwoMethods.
	self assert: x someMessage equals: 42.
	self should: [ x m1 ] raise: Error.
	self should: [ x aM2 ] raise: Error
]

{ #category : #tests }
TaTalentAddingAndRemovingTest >> testRemovingSecondTalent [
	| x |
	x := Object new.
	
	x addTalent: taTestTalent.
	x addTalent: taTestTalentWithTwoMethods.
	
	self assert: x someMessage equals: 42.
	self assert: x aM1 equals: 42.
	self assert: x aM2 equals: 22.
	
	x removeTalent: taTestTalent.
	self should:[x someMessage] raise: MessageNotUnderstood.
	self assert: x aM1 equals: 42.
	self assert: x aM2 equals: 22.

]
