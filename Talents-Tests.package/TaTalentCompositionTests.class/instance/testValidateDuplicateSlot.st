as yet unclassified
testValidateDuplicateSlot
	| x t1 t2|

	x := Object new.

	t1 := self newTalent:#T1 with: #(anSlot).

	t2 := self newTalent:#T1 with: #(anSlot).
	
	self should:[x addTalent: t1 , t2] raise:Error.