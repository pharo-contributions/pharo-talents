operations
extendClass: aClass with: aTalent
	| newClass |
	talentedClasses associations detect: [ :e | e value = aTalent ] ifFound: [ :e | ^ e key ] ifNone: [  ].

	newClass := aClass
		annonymousSubclass: aClass name , '_' , aTalent name
		uses: aTalent
		slots: #()
		classVariables: ''
		poolDictionaries: ''
		category: 'Unclassified'.
		
	talentedClasses at: newClass put: aTalent.
		
	^ newClass