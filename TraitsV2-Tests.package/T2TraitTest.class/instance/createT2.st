tests
createT2
	| t2 |
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
	^ t2