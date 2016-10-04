as yet unclassified
testValidateDuplicateSlot
	| x t1 t2|

	x := Object new.

	t1 := Talent named:#T1.
	t1 slots add: #anSlot.

	t2 := Talent named:#T1.
	t2 slots add: #anSlot.
	
	self should:[x addTalent: t1 , t2] raise:Error.