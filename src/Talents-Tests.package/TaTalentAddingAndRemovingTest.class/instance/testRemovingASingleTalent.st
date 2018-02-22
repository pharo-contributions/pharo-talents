tests
testRemovingASingleTalent
	| x |
	x := Object new.
	
	x addTalent: taTestTalent.
	
	self assert: x someMessage equals: 42.
	
	x removeTalent: taTestTalent.
	self should:[x someMessage] raise: MessageNotUnderstood.
	self assert:x class == Object.