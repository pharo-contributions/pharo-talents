public API
removeTalent: talentToRemove from: anObject
	| originalClass newObject newClass calculatedTalent |
	originalClass := self findOriginalClass: anObject.
	calculatedTalent := self calculateNewTalentFor: anObject removing: talentToRemove.

	calculatedTalent ifNotNil: [ newClass := self extendClass: originalClass with: calculatedTalent ] ifNil: [ newClass := originalClass ].

	newObject := self copyObject: anObject withNewClass: newClass.
	anObject becomeForward: newObject copyHash: false.

	^ newObject