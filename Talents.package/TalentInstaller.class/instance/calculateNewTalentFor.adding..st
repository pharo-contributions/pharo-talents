operations
calculateNewTalentFor: aClass adding: aTalent
	^ talentedClasses at: aClass ifPresent: [ :talent | talent , aTalent ] ifAbsent: [ aTalent ]