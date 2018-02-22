tests
createT1
	| t1 |
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
	^ t1