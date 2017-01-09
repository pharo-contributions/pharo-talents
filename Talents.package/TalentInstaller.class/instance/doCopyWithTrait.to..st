public API
doCopyWithTrait: traitToAdd to: aTargetClass
	| originalClass newObject newClass calculatedTalent |

	originalClass := self findOriginalClass: aTargetClass.
	calculatedTalent := self calculateNewTalentFor: aTargetClass adding: traitToAdd.
	
	^ self extendClass: originalClass with: calculatedTalent.