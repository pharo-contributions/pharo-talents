operations
doCopyWithTalent: aTalent to: anObject
	| newObject newClass talentToAdd|

	talentToAdd := aTalent asTalent.

	newClass := self doCopyWithTrait: talentToAdd to: anObject class.
	newObject := self copyObject: anObject withNewClass: newClass.	

	self talent: talentToAdd addedTo: newObject.

	^ newObject 