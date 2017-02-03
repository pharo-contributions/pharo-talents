tests-talents
testRemovingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asComposition @= (#someMessage -> #newMessage)).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.
