tests-talents
testRemovingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x newMessage] raise: MessageNotUnderstood.
