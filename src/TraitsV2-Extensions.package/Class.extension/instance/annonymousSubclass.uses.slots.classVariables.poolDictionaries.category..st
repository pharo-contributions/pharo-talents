*TraitsV2-Extensions
annonymousSubclass: aSubclassSymbol uses: aTraitCompositionOrArray slots: slotDefinition classVariables: classVarDefinition poolDictionaries: someSharedPoolNames category: aCategorySymbol
	| builder |
	builder := ShiftClassBuilder new.
	builder buildEnvironment: ShSmalltalkGlobalsEnvironment new.	

	self
		builder: builder
		subclassName: aSubclassSymbol
		uses: aTraitCompositionOrArray
		layout: FixedLayout
		slots: slotDefinition
		classVariables: classVarDefinition
		poolDictionaries: someSharedPoolNames
		category: aCategorySymbol.

	^ builder build