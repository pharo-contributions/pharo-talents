tests-traits
testChangingAMethodInATrait
	| x traitedClass | 
	traitedClass := Object copyWithTrait: taTestTalent.
	x := traitedClass new.
	
	self assert: x someMessage equals: 42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x someMessage equals: 33.