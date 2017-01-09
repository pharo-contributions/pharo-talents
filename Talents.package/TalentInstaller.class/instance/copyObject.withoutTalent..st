public API
copyObject: anObject withoutTalent: aClass
	^ (self doCopyObject: anObject withoutTalent: aClass)
		postCopy;
		yourself