Class {
	#name : #TaSharingAnonymousClassesTest,
	#superclass : #TaAbstractTalentTest,
	#instVars : [
		'objectA',
		'objectB',
		'aTalent',
		'aClass',
		'anotherClass',
		'objectC'
	],
	#category : #'Talents-Tests'
}

{ #category : #tests }
TaSharingAnonymousClassesTest >> setUp [ 

	super setUp.
	
	aTalent := self newTalent: #ATalent with: #().
	aClass := self newClass: #ATClass1 with: #(). 
	anotherClass := self newClass: #ATClass2 with: #(). 
	
	objectA := aClass new .
   objectB := anotherClass new .
	objectC := aClass new .

	objectA addTalent: aTalent.
	objectB addTalent: aTalent.
	objectC addTalent: aTalent. 

]

{ #category : #tests }
TaSharingAnonymousClassesTest >> testHavingTwoObjectsWithTheSameTalentAndDifferentInitialClassDoNotSharesAnonymousClass [

	self deny: objectA class == objectB class

	       

]

{ #category : #tests }
TaSharingAnonymousClassesTest >> testHavingTwoObjectsWithTheSameTalentAndInitialClassSharesAnonymousClass [

	self assert: objectA class == objectC class

	       

]
