public API
addTalent: aClass to:anObject
	| newObject |
	newObject := self doCopyWithTalent: aClass to: anObject.  
	anObject becomeForward: newObject copyHash: false.
	
	^ newObject 