public API
copyWithTalent: aClass to: anObject
	^ (self doCopyWithTalent: aClass to: anObject)
		postCopy;
		yourself