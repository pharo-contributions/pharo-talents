public API
addTalent: aClass to:anObject
	| originalClass newObject newClass calculatedTalent talentToAdd|

	talentToAdd := aClass asTalent.
	
	originalClass := self findOriginalClass: anObject.
	calculatedTalent := self calculateNewTalentFor: anObject adding: talentToAdd.
	
	newClass := self extendClass: originalClass with:calculatedTalent.
	
	newObject := self copyObject: anObject withNewClass: newClass.
	anObject becomeForward: newObject copyHash: false.
	
	self talent:talentToAdd addedTo: newObject.
	^ newObject 