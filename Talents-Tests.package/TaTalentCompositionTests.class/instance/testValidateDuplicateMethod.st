as yet unclassified
testValidateDuplicateMethod
	| x t1 t2|

	x := Object new.

	t1 := Talent named:#T1.
	t1 compile: 'aMethod ^ false'.

	t2 := Talent named:#T1.
	t2 compile: 'aMethod ^ true'.
	
	self should:[x addTalent: t1 , t2] raise:Error.