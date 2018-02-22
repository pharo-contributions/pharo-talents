operations
findOriginalClass: aClass
	^ talentedClasses at: aClass ifPresent: [ aClass superclass ] ifAbsent: [ aClass ]