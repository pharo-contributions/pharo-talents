Class {
	#name : #TaSimpleTalentTests,
	#superclass : #TaAbstractTalentTest,
	#category : 'Talents-Tests'
}

{ #category : #'tests-talents' }
TaSimpleTalentTests >> testAdding2SimpleTalent [
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
TaSimpleTalentTests >> testAdding2SimpleTrait [
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
TaSimpleTalentTests >> testAddingSimpleTalent [
	| x |
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
]

{ #category : #'tests-traits' }
TaSimpleTalentTests >> testAddingSimpleTrait [
	| x traitedClass |
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
]

{ #category : #'tests-talents' }
TaSimpleTalentTests >> testCopyingObjectState [
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 23.
	
	x addTalent: taTestTalentUsingAMessageDefined.
	
	self assert: x anotherMessage equals: 23.

	self deny: (TaTestClassWithInstanceVariable canUnderstand: #anotherMessage).	

]
