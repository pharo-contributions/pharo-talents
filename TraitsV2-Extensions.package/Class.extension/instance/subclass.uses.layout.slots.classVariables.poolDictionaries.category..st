*TraitsV2-Extensions
subclass: aSubclassSymbol uses: aTraitCompositionOrArray layout: layoutClass slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	^ ShiftClassInstaller
		make: [ :builder | 
			self
				builder: builder
				subclassName: aSubclassSymbol
				uses: aTraitCompositionOrArray
				layout: layoutClass
				slots: slotDefinition
				classVariables: classVarDefinition
				poolDictionaries: someSharedPoolNames
				category: aCategorySymbol ]