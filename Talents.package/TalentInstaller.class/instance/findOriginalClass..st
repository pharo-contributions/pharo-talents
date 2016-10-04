operations
findOriginalClass: anObject
	^ talentedClasses at: anObject class ifPresent: [ anObject class superclass ] ifAbsent: [ anObject class ]