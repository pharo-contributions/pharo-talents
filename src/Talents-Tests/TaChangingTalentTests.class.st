Class {
	#name : #TaChangingTalentTests,
	#superclass : #TaAbstractTalentTest,
	#category : #'Talents-Tests'
}

{ #category : #'tests-talents' }
TaChangingTalentTests >> testAddingMethodInADeepAliasTalent [
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent compile: 'anotherMethod 
		^ 33.
	'.
	
	self assert: x anotherMethod equals: 33.
]

{ #category : #'tests-talents' }
TaChangingTalentTests >> testAddingMethodInATalent [
	| x | 
	"This test will take an instance of Object and add to this single instance the method #someMessage.
	This method returns 42, so we assert that"
	
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent compile: 'anotherMethod 
		^ 33.
	'.
	
	self assert: x anotherMethod equals: 33.
]

{ #category : #'tests-talents' }
TaChangingTalentTests >> testChangingAMethodInATalent [
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x someMessage equals: 33.
]

{ #category : #'tests-traits' }
TaChangingTalentTests >> testChangingAMethodInATrait [
	| x traitedClass | 
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x someMessage equals: 33.
]

{ #category : #'tests-talents' }
TaChangingTalentTests >> testChangingMethodInADeepAliasTalent [
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x newMessage equals: 33.
]

{ #category : #'tests-talents' }
TaChangingTalentTests >> testRemovingAMethodInATalent [
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x someMessage] raise: MessageNotUnderstood.
]

{ #category : #'tests-talents' }
TaChangingTalentTests >> testRemovingMethodInADeepAliasTalent [
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.

]
