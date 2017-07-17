tests
testAliasMethod
	| x |
	x := Object new.
	x addTalent: (taTestTalent asComposition @ { #someMessage -> #otherName}).
	
	self assert: x otherName equals: 42.
	self deny: (x class canUnderstand: #someMessage).
