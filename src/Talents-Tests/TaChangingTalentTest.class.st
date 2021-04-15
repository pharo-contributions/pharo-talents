Class {
	#name : #TaChangingTalentTest,
	#superclass : #TaAbstractTalentTest,
	#category : #'Talents-Tests'
}

{ #category : #'tests-talents' }
TaChangingTalentTest >> testAddingMethodInADeepAliasTalent [
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
TaChangingTalentTest >> testAddingMethodInATalent [
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent compile: 'anotherMethod 
		^ 33.
	'.
	
	self assert: x anotherMethod equals: 33.
]

{ #category : #'tests-talents' }
TaChangingTalentTest >> testChangingAMethodInATalent [
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
TaChangingTalentTest >> testChangingAMethodInATrait [
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
TaChangingTalentTest >> testChangingMethodInADeepAliasTalent [
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
TaChangingTalentTest >> testRemovingAMethodInATalent [
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x someMessage] raise: MessageNotUnderstood.
]

{ #category : #'tests-talents' }
TaChangingTalentTest >> testRemovingMethodInADeepAliasTalent [
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.

]
