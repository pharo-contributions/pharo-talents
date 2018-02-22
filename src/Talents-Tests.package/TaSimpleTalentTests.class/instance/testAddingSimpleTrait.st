tests-traits
testAddingSimpleTrait
	| x traitedClass |
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	self deny: (Object canUnderstand: #someMessage).