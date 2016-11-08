as yet unclassified
testAddingMethodInATalent
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent compile: 'anotherMethod 
		^ 33.
	'.
	
	self assert: x anotherMethod equals: 33.