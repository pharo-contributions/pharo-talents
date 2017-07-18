accessing
without: anotherTalent
	^ (anotherTalent = self or: [ inner = anotherTalent ])
		ifTrue: [ nil ]
		ifFalse: [ self ]