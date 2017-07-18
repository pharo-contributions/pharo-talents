tests
testSequence
	| t1 t2 c1 obj |
	t1 := self newTrait: #T1 with: 'a b c' asSlotCollection.

	t1
		compile:
	'setValues
		a := 1.
		b := 2.
		c := 3.
	'.

	t1
		compile:
	'getValues
		^ a + b + c
	'.
	t2 := self newTrait: #T2 with: 'd e f' asSlotCollection.

	t2
		compile:
	'setValues2
		d := 1.
		e := 2.
		f := 3.
	'.

	t2
		compile:
	'getValues2
		^ d + e + f + self getValues
	'.

	c1 := self newClass: #C1 with: 'g h' asSlotCollection uses: t1 + t2.

	obj := c1 new.
	obj setValues.
	obj setValues2.
	
	self assert: obj getValues equals: 6.
	self assert: obj getValues2 equals: 12	