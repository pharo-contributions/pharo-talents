operations
, anotherTalent
	anotherTalent addToSequence: self.
	^ self members size = 1
		ifTrue: [ members anyOne ]
		ifFalse: [ self ]