operations
doCopyObject: anObject withoutTalent: aClass
	| originalClass newObject newClass calculatedTalent talentToRemove |
	
	talentToRemove := aClass asTalent.
	
	originalClass := self findOriginalClass: anObject class.
	calculatedTalent := self calculateNewTalentFor: anObject removing: talentToRemove.

	calculatedTalent ifNotNil: [ newClass := self extendClass: originalClass with: calculatedTalent ] ifNil: [ newClass := originalClass ].

	newObject := self copyObject: anObject withNewClass: newClass.

	^ newObject