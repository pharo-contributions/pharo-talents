as yet unclassified
testRenameSlot
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized asComposition >> (#anSlot -> #otherName).

	self assert: x anSlot equals: 55.
	self assert: (x instVarNamed: #otherName) equals: 55.
	self should: [ x instVarAt: #anSlot ] raise: Error