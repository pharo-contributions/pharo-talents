*TraitsV2
named: aSymbol uses: aTraitCompositionOrCollection package: aString
	| env |
	env := self environment.
	^T2Trait
		named: aSymbol
		uses: aTraitCompositionOrCollection
		category: aString
		env: env