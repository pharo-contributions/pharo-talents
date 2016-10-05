public API
addTalent: aClass to:anObject
	| newObject |
	newObject := self copyWithTalent: aClass to: anObject.  
	anObject becomeForward: newObject copyHash: false.
	
	^ newObject 