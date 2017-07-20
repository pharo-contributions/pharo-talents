*TraitsV2-Extensions
builder: builder subclassName: aSubclassSymbol uses: aTraitCompositionOrArray layout: layoutClass slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	| builderEnhancer |
	builderEnhancer := TraitBuilderEnhancer new.
	builderEnhancer traitComposition: aTraitCompositionOrArray asTraitComposition.
	builderEnhancer classTraitComposition: aTraitCompositionOrArray asTraitComposition classComposition. 

	builder
		metaclassClass: TraitedMetaclass;
		builderEnhancer: builderEnhancer;
		name: aSubclassSymbol;
		superclass: self;
		slots: slotDefinition;
		sharedVariables: classVarDefinition;
		sharedPools: someSharedPoolNames;
		category: aCategorySymbol;
		classSlots: #()