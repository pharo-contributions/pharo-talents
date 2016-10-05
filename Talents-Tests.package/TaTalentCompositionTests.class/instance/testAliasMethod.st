as yet unclassified
testAliasMethod
	| x |
	x := Object new.
	x addTalent: (taTestTalent asTalent @ ( #someMessage -> #otherName)).
	
	self assert: x otherName equals: 42.
	self deny: (x class canUnderstand: #someMessage).
