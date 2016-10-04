public API
addTalent: talentToAdd to:anObject
	| originalClass newObject newClass calculatedTalent |
	
	originalClass := self findOriginalClass: anObject.
	calculatedTalent := self calculateNewTalentFor: anObject adding: talentToAdd.
	
	newClass := self extendClass: originalClass with:calculatedTalent.
	
	newObject := self copyObject: anObject withNewClass: newClass.
	anObject becomeForward: newObject copyHash: false.
	
	self talent:talentToAdd addedTo: newObject.
	^ newObject 