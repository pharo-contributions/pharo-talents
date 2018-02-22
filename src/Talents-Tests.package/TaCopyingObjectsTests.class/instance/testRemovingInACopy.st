as yet unclassified
testRemovingInACopy
	| x t1 x2 x3 |
	x := { 1. 2. 3. } asBag.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x2 := x copyWithTalent: t1.

	x3 := x2 copyWithoutTalent: t1.
	
	self assert: x size equals: 3.
	self assert: x2 size equals: 3.
	self assert: x3 size equals: 3.
	
	self should:[x3 tamanio] raise: MessageNotUnderstood.