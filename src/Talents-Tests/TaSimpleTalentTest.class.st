Class {
	#name : #TaSimpleTalentTest,
	#superclass : #TaAbstractTalentTest,
	#category : #'Talents-Tests'
}

{ #category : #'tests-talents' }
TaSimpleTalentTest >> testAdding2SimpleTalent [
	| x t2 |
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
	
	t2 := self newTalent: #T2 with: #(someInstanceVariable).

	t2 compile: ' someInstanceVariable: aValue
		someInstanceVariable := aValue.
	'.
	
	t2 compile: ' someInstanceVariable
		^ someInstanceVariable.
	'.

	x addTalent: t2.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).

	x someInstanceVariable: 23.

	self assert: x someInstanceVariable equals: 23.

]

{ #category : #'tests-traits' }
TaSimpleTalentTest >> testAdding2SimpleTrait [
	| x t2 traitedClass |
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
	
	t2 := self newTalent: #T2 with: #(someInstanceVariable).

	t2 compile: ' someInstanceVariable: aValue
		someInstanceVariable := aValue.
	'.
	
	t2 compile: ' someInstanceVariable
		^ someInstanceVariable.
	'.

	traitedClass addTrait: t2.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).

	x someInstanceVariable: 23.

	self assert: x someInstanceVariable equals: 23.

]

{ #category : #'tests-talents' }
TaSimpleTalentTest >> testAddingSimpleTalent [
	| x |
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
]

{ #category : #'tests-traits' }
TaSimpleTalentTest >> testAddingSimpleTrait [
	| x traitedClass |
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
]

{ #category : #'tests-talents' }
TaSimpleTalentTest >> testClassSideMethods [
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 23.
	
	x addTalent: taTalentWithClassSide.
	
	self assert: x class aClassMessage equals: 42.

]

{ #category : #'tests-talents' }
TaSimpleTalentTest >> testCopyingObjectState [
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 23.
	
	x addTalent: taTestTalentUsingAMessageDefined.
	
	self assert: x anotherMessage equals: 23.

	self deny: (TaTestClassWithInstanceVariable canUnderstand: #anotherMessage).	

]
