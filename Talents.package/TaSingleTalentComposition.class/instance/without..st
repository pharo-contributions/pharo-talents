accessing
without: anotherTalent
	^ (anotherTalent = self or: [ talent = anotherTalent ])
		ifTrue: [ nil ]
		ifFalse: [ self ]