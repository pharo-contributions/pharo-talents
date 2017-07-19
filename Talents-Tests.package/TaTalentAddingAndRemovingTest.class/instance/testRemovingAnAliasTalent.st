tests
testRemovingAnAliasTalent
	| x |
	x := Object new.

	x addTalent: taTestTalent.
	x addTalent: taTestTalentWithTwoMethods asComposition @ {#m1 -> #aM1}.

	self assert: x someMessage equals: 42.
	self assert: x m1 equals: 42.
	self assert: x aM2 equals: 22.

	x removeTalent: taTestTalentWithTwoMethods.
	self assert: x someMessage equals: 42.
	self should: [ x m1 ] raise: Error.
	self should: [ x aM2 ] raise: Error