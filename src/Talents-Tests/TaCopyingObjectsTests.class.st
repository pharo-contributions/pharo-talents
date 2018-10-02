Class {
	#name : #TaCopyingObjectsTests,
	#superclass : #TaAbstractTalentTest,
	#category : 'Talents-Tests'
}

{ #category : #tests }
TaCopyingObjectsTests >> testCopyingArray [
	| x t1 |
	x := { 1. 2. 3. }.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x addTalent: t1. 
	self assert: x tamanio equals: 3
]

{ #category : #tests }
TaCopyingObjectsTests >> testCopyingBag [
	| x t1 x2 |
	x := { 1. 2. 3. } asBag.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x2 := x copyWithTalent: t1.
	
	self assert: x size equals: 3.
	self assert: x2 size equals: 3.
	
	x remove: 1.
	
	self assert: x2 size equals: 3.
]

{ #category : #tests }
TaCopyingObjectsTests >> testRemovingInACopy [
	| x t1 x2 x3 |
	x := { 1. 2. 3. } asBag.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x2 := x copyWithTalent: t1.

	x3 := x2 copyWithoutTalent: t1.
	
	self assert: x size equals: 3.
	self assert: x2 size equals: 3.
	self assert: x3 size equals: 3.
	
	self should:[x3 tamanio] raise: MessageNotUnderstood.
]

{ #category : #tests }
TaCopyingObjectsTests >> testReplacingBag [
	| x t1 x2 |
	x := { 1. 2. 3. } asBag.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x2 := x addTalent: t1.
	
	self assert: x size equals: 3.
	self assert: x2 size equals: 3.
	
	x remove: 1.
	
	self assert: x2 size equals: 2.
]

{ #category : #tests }
TaCopyingObjectsTests >> testTalentedCopy [
	| t1 x x2 |
	t1 := self newTalent: #SomeTalent.
	t1 compile: 'aMessage 
			^ 42
	   '.
	
	x := Object new.
	x2 := x copyWithTalent: t1.
	
	self deny: x == x2.
	self should:[ x aMessage] raise: MessageNotUnderstood.
	self assert: x2 aMessage equals: 42
]
