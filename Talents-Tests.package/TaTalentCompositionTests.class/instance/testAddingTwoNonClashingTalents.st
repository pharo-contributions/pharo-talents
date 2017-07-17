tests
testAddingTwoNonClashingTalents
	| x |
	x := TaTestClassWithInstanceVariable new.
	x anInstanceVariable: 32.
	
	x addTalent: (taTestTalent asComposition + taTestTalentUsingAMessageDefined asComposition).
	
	self assert: x someMessage equals: 42.
	self assert: x anotherMessage equals: 32.

	self deny: (TaTestClassWithInstanceVariable canUnderstand: #someMessage).
	self deny: (TaTestClassWithInstanceVariable canUnderstand: #anotherMessage).
