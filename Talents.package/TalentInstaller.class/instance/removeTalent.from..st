public API
removeTalent: aClass from: anObject
	| newObject |
	
	newObject := self copyWithoutTalent: aClass from: anObject. 
	anObject becomeForward: newObject copyHash: false.

	^ newObject