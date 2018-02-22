tests-talents
testRemovingAMethodInATalent
	| x | 
	x := Object new.
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals:42.
	
	taTestTalent removeSelector: #someMessage.
	
	self should: [x someMessage] raise: MessageNotUnderstood.