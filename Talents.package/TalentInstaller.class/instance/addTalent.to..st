as yet unclassified
addTalent: aTalent to:anObject
	| originalClass newObject newClass |
	
	originalClass := anObject class.
	newClass := self extendClass: originalClass with:aTalent.
	
	newObject := self copyObject: anObject withNewClass: newClass.
	anObject becomeForward: newObject copyHash: false.
	
	self talent:aTalent addedTo: newObject.
	^ newObject 