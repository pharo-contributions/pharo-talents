tests
testCopyingArray
	| x t1 |
	x := { 1. 2. 3. }.
	t1 := self newTalent: #Tamanio.
	t1 compile: 'tamanio ^ self size'.

	x addTalent: t1. 
	self assert: x tamanio equals: 3