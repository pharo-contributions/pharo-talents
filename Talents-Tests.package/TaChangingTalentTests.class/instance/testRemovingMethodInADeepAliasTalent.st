tests-talents
testRemovingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTalent @= (#someMessage -> #newMessage)).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.
