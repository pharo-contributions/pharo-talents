public API
removeTalent: aClass from: anObject
	| newObject |
	
	newObject := self doCopyWithoutTalent: aClass from: anObject. 
	anObject becomeForward: newObject copyHash: false.

	^ newObject