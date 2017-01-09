public API
copyObject: anObject withTalent: aClass
	^ (self doCopyObject: anObject withTalent: aClass)
		postCopy;
		yourself