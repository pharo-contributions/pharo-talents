*TraitsV2-ClassExtensions
subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: FixedLayout
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: someSharedPoolNames
		category: aCategorySymbol