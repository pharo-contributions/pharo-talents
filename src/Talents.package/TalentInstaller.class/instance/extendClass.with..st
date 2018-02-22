operations
extendClass: aClass with: aTalent
	| newClass |
	talentedClasses associations detect: [ :e | e value = aTalent ] ifFound: [ :e | ^ e key ] ifNone: [  ].

	newClass := Smalltalk anonymousClassInstaller make: [ :builder |
		builder
			superclass: aClass;
			traitComposition: aTalent;
			layoutClass: aClass classLayout class ].
		
	talentedClasses at: newClass put: aTalent.
		
	^ newClass