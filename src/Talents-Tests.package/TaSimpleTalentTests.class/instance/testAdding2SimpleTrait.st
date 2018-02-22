tests-traits
testAdding2SimpleTrait
	| x t2 traitedClass |
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).
	
	t2 := self newTalent: #T2 with: #(someInstanceVariable).

	t2 compile: ' someInstanceVariable: aValue
		someInstanceVariable := aValue.
	'.
	
	t2 compile: ' someInstanceVariable
		^ someInstanceVariable.
	'.

	traitedClass addTrait: t2.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).

	x someInstanceVariable: 23.

	self assert: x someInstanceVariable equals: 23.
