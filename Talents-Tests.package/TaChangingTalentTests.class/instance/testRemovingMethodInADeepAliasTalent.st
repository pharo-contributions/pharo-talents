tests-talents
testRemovingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.
