Class {
	#name : #TaAbstractTalentTest,
	#superclass : #TestCase,
	#instVars : [
		'taTestTalentUsingAMessageDefined',
		'taTestTalent',
		'taTestTalentWithTwoMethods',
		'taRecursiveMethodTalent',
		'taTalentWithASlot',
		'taTalentWithASlotInitialized',
		'taAnotherInitializedSlot',
		'createdClasses',
		'taTalentWithClassSide'
	],
	#category : #'Talents-Tests'
}

{ #category : #'instance creation' }
TaAbstractTalentTest >> newClass: aName with: slots [
	| class |
	class := Object subclass: aName slots: slots classVariables: #() package: 'Talents-Tests-TestClasses'.
	createdClasses add:class.
	
	^class.
]

{ #category : #'as yet unclassified' }
TaAbstractTalentTest >> newTalent: aName [
	^ self newTalent:aName with:#().
]

{ #category : #'instance creation' }
TaAbstractTalentTest >> newTalent: aName with: slots [
	| class |
	class := Trait named: aName uses: { } slots: slots package: 'Talents-Tests-TestClasses'  env: self class environment. 
	createdClasses add:class.
	
	^class.
]

{ #category : #running }
TaAbstractTalentTest >> setUp [
	TalentInstaller reset.
	
	createdClasses := Set new.
	

	taTestTalent := self newTalent:#TaTestTalent.
	taTestTalent compile: '
	someMessage
	^ 42.'.
	
	taTestTalentUsingAMessageDefined := self newTalent:#TaTestTalentUsingAMessageDefined.
	taTestTalentUsingAMessageDefined compile: '
	anotherMessage
	^ self anInstanceVariable.'.
	
	taTestTalentWithTwoMethods := self newTalent: #TaTestTalentWithTwoMethods.
	taTestTalentWithTwoMethods compile: ' aM1 ^ 42'.
	taTestTalentWithTwoMethods compile: ' aM2 ^ 22'.
	
	taRecursiveMethodTalent := self newTalent: #TaRecursiveMethodTalent.
	taRecursiveMethodTalent compile: '
		someRecursive: x 
			^ x = 0 ifTrue:[ 0 ] ifFalse:[ x + (self someRecursive: x - 1) ]
	'.
	
	taTalentWithASlot := self newTalent: #TaTalentWithASlot with: {#aSlot => InstanceVariableSlot}.
	taTalentWithASlot compile: '
		aSlot
			^ aSlot.
	'.
		taTalentWithASlot compile: '
		aSlot: aValue
			aSlot := aValue.
	'.
	
	taTalentWithASlotInitialized := self newTalent: #TaTalentWithASlotInitialized with: #(aSlot).
	taTalentWithASlotInitialized compile: '
		aSlot
			^ aSlot.
	'.
	taTalentWithASlotInitialized compile: '
		initializeTalent
			aSlot := 55.
	'.
	
	taAnotherInitializedSlot := self newTalent: #TaAnotherInitializedSlot with: #(anotherSlot).
	taAnotherInitializedSlot compile: '
		anotherSlot
			^ anotherSlot.
	'.
	taAnotherInitializedSlot compile: '
		initializeTalent
			anotherSlot := 93.
	'.

	taTalentWithClassSide := self newTalent: #TaTalentWithClassSide with: #().
	taTalentWithClassSide class compile: '
	aClassMessage 
		^ 42
	'.
]

{ #category : #running }
TaAbstractTalentTest >> tearDown [
	TalentInstaller reset.
	createdClasses do:#removeFromSystem.
	createdClasses := nil.
]
