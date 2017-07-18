*TraitsV2-ClassExtensions
subclass: aSubclassSymbol uses: aTraitCompositionOrArray layout: layoutClass slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	| builderEnhancer |
	
	builderEnhancer := TraitBuilderEnhancer new.
	builderEnhancer traitComposition: aTraitCompositionOrArray asComposition.
	builderEnhancer classTraitComposition: aTraitCompositionOrArray asComposition classComposition.	
	
	^ ShiftClassInstaller
		make: [ :builder | 
			builder
				metaclassClass: TraitedMetaclass;
				builderEnhancer: builderEnhancer;
				name: aSubclassSymbol;
				superclass: self;
				slots: slotDefinition;
				sharedVariables: classVarDefinition;
				sharedPools: someSharedPoolNames;
				category: aCategorySymbol;
				classSlots: #() ]