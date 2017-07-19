tests
testRemovingMethod
	| x |
	x := Object new.
	x addTalent: (taTestTalentWithTwoMethods asTraitComposition - {#aM2} ).
	
	self assert: x aM1 equals: 42.
	self deny: (x class canUnderstand: #aM2).
