instance creation
named: aSymbol uses: aTraitCompositionOrCollection category: aString env: anEnvironment
	| trait |
	trait := super
		subclass: aSymbol
		uses: aTraitCompositionOrCollection
		slots: #()
		classVariables: ''
		poolDictionaries: ''
		category: category.
		
	trait users: #().
	^ trait