operations
calculateNewTalentFor: anObject removing: aTalent
	^ talentedClasses at: anObject class ifPresent: [ :talent | talent without: aTalent ] ifAbsent: [ self error: 'The object has no talents' ]