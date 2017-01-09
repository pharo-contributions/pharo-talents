tests-talents
testChangingAMethodInATalent
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x someMessage equals: 33.