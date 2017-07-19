as yet unclassified
testRenameKeepingOrderSlot
	| x t1 |
	x := Object new.
	t1 := self newTalent: #T1 with: #(first second third fourth).
	
	x addTalent: (t1 asTraitComposition >> (#second -> #otherName)) >> (#fourth -> #last).

	self assert: x class allInstVarNames equals: #(first otherName third last).
	self assert: (x class instVarIndexFor: #first) equals: 1.
	self assert: (x class instVarIndexFor: #otherName) equals: 2.
	self assert: (x class instVarIndexFor: #third) equals: 3.
	self assert: (x class instVarIndexFor: #last) equals: 4.
