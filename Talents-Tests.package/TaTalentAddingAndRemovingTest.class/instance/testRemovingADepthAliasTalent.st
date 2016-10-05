as yet unclassified
testRemovingADepthAliasTalent
	| x |
	x := Object new.

	x addTalent: taTestTalent.
	x addTalent: (taRecursiveMethodTalent asTalent @= (#someRecursive: -> #mRecursive:)).

	self assert: x someMessage equals: 42.
	self assert: (x mRecursive:5 ) equals: 15.

	x removeTalent: taRecursiveMethodTalent.
	self assert: x someMessage equals: 42.
	self should: [ x mRecursive:5 ] raise: Error.