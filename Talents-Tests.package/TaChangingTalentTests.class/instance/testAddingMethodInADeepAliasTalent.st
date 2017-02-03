tests-talents
testAddingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asComposition @= (#someMessage -> #newMessage)).
	
	self assert: x newMessage equals:42.
	
	taTestTalent compile: 'anotherMethod 
		^ 33.
	'.
	
	self assert: x anotherMethod equals: 33.