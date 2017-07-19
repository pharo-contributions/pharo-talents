*TraitsV2-Extensions
subclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition category: aCategorySymbol
	^ self
		subclass: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: FixedLayout
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: ''
		category: aCategorySymbol