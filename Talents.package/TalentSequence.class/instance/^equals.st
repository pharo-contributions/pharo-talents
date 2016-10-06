operations
= anotherTalent
	(anotherTalent class isKindOf: self class) ifFalse: [ ^false ].
	^ self members = anotherTalent members