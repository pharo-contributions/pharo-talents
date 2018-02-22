tests
testSequence
	| t1 t2 c1 obj |
	
	t1 := self createT1.
	t2 := self createT2.
	c1 := self newClass: #C1 with: 'g h' asSlotCollection uses: t1 + t2.

	obj := c1 new.
	obj setValues.
	obj setValues2.
	self assert: obj getValues equals: 6.
	self assert: obj getValues2 equals: 12