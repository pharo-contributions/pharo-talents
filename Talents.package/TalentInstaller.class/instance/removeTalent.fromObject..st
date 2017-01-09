public API
removeTalent: aClass fromObject: anObject
	| newObject |
	newObject := self doCopyObject: anObject withoutTalent: aClass.
	anObject becomeForward: newObject copyHash: false.
	^ newObject