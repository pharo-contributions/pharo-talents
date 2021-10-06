Class {
	#name : #TaTalentCompositionTest,
	#superclass : #TaAbstractTalentTest,
	#category : #'Talents-Tests'
}

{ #category : #tests }
TaTalentCompositionTest >> testAddingTwoNonClashingTalents [
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 32.
	
	x addTalent: (taTestTalent asTraitComposition + taTestTalentUsingAMessageDefined asTraitComposition).
	
	self assert: x someMessage equals: 42.
	self assert: x anotherMessage equals: 32.

	self deny: (TaTestClassWithInstanceVariable canUnderstand: #someMessage).
	self deny: (TaTestClassWithInstanceVariable canUnderstand: #anotherMessage).

]

{ #category : #tests }
TaTalentCompositionTest >> testAliasMethod [
	| x |
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @ { #otherName -> #someMessage}).
	
	self assert: x otherName equals: 42.
	self assert: (x class canUnderstand: #someMessage).

]

{ #category : #tests }
TaTalentCompositionTest >> testAliasRecursiveMethod [
	" The alias is not rewriting the uses of this message inside the talent. A deep alias performs this"
	| x |
	x := Object new.
	x addTalent: (taRecursiveMethodTalent asTraitComposition @ { #otherName: -> #someRecursive: }) - {#otherName:}.
	
	self should: [x otherName:5] raise: MessageNotUnderstood .
	self deny: (x class canUnderstand: #someMessage).

]

{ #category : #tests }
TaTalentCompositionTest >> testDeepAliasRecursiveMethod [
	" The alias is not rewriting the uses of this message inside the talent. A deep alias performs this"
	| x |
	x := Object new.
	x addTalent: (taRecursiveMethodTalent asTraitComposition @= { #otherName: -> #someRecursive:}).
	
	self assert: (x otherName:5) equals:15 .
	self deny: (x class canUnderstand: #someMessage).

]

{ #category : #tests }
TaTalentCompositionTest >> testRemovingMethod [
	| x |
	x := Object new.
	x addTalent: (taTestTalentWithTwoMethods asTraitComposition - {#aM2} ).
	
	self assert: x aM1 equals: 42.
	self deny: (x class canUnderstand: #aM2).

]

{ #category : #tests }
TaTalentCompositionTest >> testValidateDuplicateMethod [
	| x t1 t2|

	x := Object new.

	t1 := self newTalent:#T1.
	t1 compile: 'aMethod ^ false'.

	t2 := self newTalent:#T1.
	t2 compile: 'aMethod ^ true'.
	
	self should:[x addTalent: t1 , t2] raise:Error.
]

{ #category : #tests }
TaTalentCompositionTest >> testValidateDuplicateSlot [
	| x t1 t2|

	x := Object new.

	t1 := self newTalent:#T1 with: #(aSlot).

	t2 := self newTalent:#T1 with: #(aSlot).
	
	self should:[x addTalent: t1 , t2] raise:Error.
]

{ #category : #tests }
TaTalentCompositionTest >> testValidateDuplicationOfTalent [
	| x |
	x := Object new.
	self should:[x addTalent: taTestTalent , taTestTalent] raise:Error.
]
