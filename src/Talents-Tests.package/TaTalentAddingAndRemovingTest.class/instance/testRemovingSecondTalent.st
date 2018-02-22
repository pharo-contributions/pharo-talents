as yet unclassified
testRemovingSecondTalent
	| x |
	x := Object new.
	
	x addTalent: taTestTalent.
	x addTalent: taTestTalentWithTwoMethods.
	
	self assert: x someMessage equals: 42.
	self assert: x aM1 equals: 42.
	self assert: x aM2 equals: 22.
	
	x removeTalent: taTestTalent.
	self should:[x someMessage] raise: MessageNotUnderstood.
	self assert: x aM1 equals: 42.
	self assert: x aM2 equals: 22.
