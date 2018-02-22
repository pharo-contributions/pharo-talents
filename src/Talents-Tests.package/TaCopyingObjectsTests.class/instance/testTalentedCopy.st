tests
testTalentedCopy
	| t1 x x2 |
	t1 := self newTalent: #SomeTalent.
	t1 compile: 'aMessage 
			^ 42
	   '.
	
	x := Object new.
	x2 := x copyWithTalent: t1.
	
	self deny: x == x2.
	self should:[ x aMessage] raise: MessageNotUnderstood.
	self assert: x2 aMessage equals: 42