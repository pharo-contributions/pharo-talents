operations
calculateNewTalentFor: anObject adding: aTalent
	^ talentedClasses at: anObject class ifPresent: [ :talent | talent , aTalent ] ifAbsent: [ aTalent ]