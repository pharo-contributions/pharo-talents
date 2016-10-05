operations
= anotherTalent
	^ (anotherTalent isKindOf: self class)
		ifTrue: [ anotherTalent innerClass = self innerClass ]
		ifFalse: [ ^ false ]