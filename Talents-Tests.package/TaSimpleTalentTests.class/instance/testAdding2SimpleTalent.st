as yet unclassified
testAdding2SimpleTalent
	| x t2 |
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
	
	t2 := Talent named: #T2.
	t2 slots: #(someInstanceVariable).

	t2 compile: ' someInstanceVariable: aValue
		someInstanceVariable := aValue.
	'.
	
	t2 compile: ' someInstanceVariable
		^ someInstanceVariable.
	'.

	x addTalent: t2.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).

	x someInstanceVariable: 23.

	self assert: x someInstanceVariable equals: 23.
