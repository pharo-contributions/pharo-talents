tests
testAliasMethod
	| x |
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @ { #otherName -> #someMessage}).
	
	self assert: x otherName equals: 42.
	self deny: (x class canUnderstand: #someMessage).
