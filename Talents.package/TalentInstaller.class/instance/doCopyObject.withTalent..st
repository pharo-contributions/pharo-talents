operations
doCopyObject: anObject withTalent: aTalent
	| newObject newClass talentToAdd |
	talentToAdd := aTalent asTalent.
	newClass := self doCopyClass: anObject class withTrait: talentToAdd.
	newObject := self copyObject: anObject withNewClass: newClass.
	self talent: talentToAdd addedTo: newObject.
	^ newObject