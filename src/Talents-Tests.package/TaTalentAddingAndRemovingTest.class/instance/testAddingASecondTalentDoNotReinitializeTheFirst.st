as yet unclassified
testAddingASecondTalentDoNotReinitializeTheFirst
	| x t1 t2 |
	x := Object new.
	
	t1 := self newTalent: #T1 with: #(t1Slot).
	t1 compile: ' initializeTalent 
		t1Slot ifNotNil:[t1Slot:= t1Slot + 1] ifNil:[ t1Slot := 1]
	'.
	
	
	t2 := self newTalent: #T2 with: #(t2Slot).
	t2 compile: ' initializeTalent 
		t2Slot ifNotNil:[t2Slot:= t2Slot + 3] ifNil:[ t2Slot := 7]
	'.
	
	x addTalent: t1.
	
	self assert: (x instVarNamed: #t1Slot) equals: 1.
	self should: [x instVarNamed: #t2Slot] raise: Error.
	
	x addTalent: t2.
	
	self assert: (x instVarNamed: #t1Slot) equals: 1.
	self assert: (x instVarNamed: #t2Slot) equals: 7.
