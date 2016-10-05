public API
copyWithoutTalent: aClass from: anObject
	^ (self doCopyWithoutTalent: aClass from: anObject)
		postCopy;
		yourself