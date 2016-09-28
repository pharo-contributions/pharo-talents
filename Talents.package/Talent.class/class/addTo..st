as yet unclassified
addTo: anObject
	| originalClass newObject newClass |
	 
	originalClass := anObject class.
	newClass := self extendClass: originalClass.
	
	newObject := self copyObject: anObject withNewClass: newClass.
	anObject becomeForward: newObject copyHash: false.
	
	self talentAdded: newObject.
	^ newObject 