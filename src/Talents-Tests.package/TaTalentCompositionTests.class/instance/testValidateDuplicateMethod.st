tests
testValidateDuplicateMethod
	| x t1 t2|

	x := Object new.

	t1 := self newTalent:#T1.
	t1 compile: 'aMethod ^ false'.

	t2 := self newTalent:#T1.
	t2 compile: 'aMethod ^ true'.
	
	self should:[x addTalent: t1 , t2] raise:Error.