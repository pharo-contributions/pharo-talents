as yet unclassified
testCopyingObjectState
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 23.
	
	x addTalent: taTestTalentUsingAMessageDefined.
	
	self assert: x anotherMessage equals: 23.

	self deny: (TaTestClassWithInstanceVariable canUnderstand: #anotherMessage).	
