public API
addTalent: aClass toObject: anObject
	| newObject |
	newObject := self doCopyObject: anObject withTalent: aClass.
	anObject becomeForward: newObject copyHash: true.
	^ newObject