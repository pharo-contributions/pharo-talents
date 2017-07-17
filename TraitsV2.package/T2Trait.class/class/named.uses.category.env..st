instance creation
named: aSymbol uses: aTraitCompositionOrCollection category: aString env: anEnvironment
	| trait |
	trait := super
		subclass: aSymbol
		slots: #()
		classVariables: ''
		poolDictionaries: ''
		category: category.
	^ trait