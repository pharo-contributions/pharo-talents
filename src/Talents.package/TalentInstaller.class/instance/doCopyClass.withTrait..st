operations
doCopyClass: aTargetClass withTrait: traitToAdd
	| originalClass calculatedTalent |

	originalClass := self findOriginalClass: aTargetClass.
	calculatedTalent := self calculateNewTalentFor: aTargetClass adding: traitToAdd.
	
	^ self extendClass: originalClass with: calculatedTalent.