tests-talents
testChangingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTalent @= (#someMessage -> #newMessage)).
	
	self assert: x newMessage equals:42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x newMessage equals: 33.