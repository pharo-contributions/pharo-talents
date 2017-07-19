tests-talents
testChangingMethodInADeepAliasTalent
	| x | 
	x := Object new.
	x addTalent: (taTestTalent asTraitComposition @= {#newMessage -> #someMessage}).
	
	self assert: x newMessage equals:42.
	
	taTestTalent compile: 'someMessage 
		^ 33.
	'.
	
	self assert: x newMessage equals: 33.