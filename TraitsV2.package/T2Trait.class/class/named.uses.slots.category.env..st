instance creation
named: aName uses: aTraitCompositionOrCollection slots: slots category: aString env: anEnvironment 
	| trait |
	trait := super
		subclass: aName
		uses: aTraitCompositionOrCollection
		slots: slots
		classVariables: ''
		poolDictionaries: ''
		category: category.
		
	trait users: #().
	^ trait