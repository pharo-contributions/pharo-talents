as yet unclassified
testAddingSimpleTalent
	| x |
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).