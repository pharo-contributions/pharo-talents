tests
testSimpleSlot
	| x |
	x := Object new.
	x addTalent: taTalentWithASlot.

	x anSlot: 23.
	self assert: x anSlot equals: 23.