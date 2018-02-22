*TraitsV2-Extensions
subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory

	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		layout: FixedLayout
		slots: someInstanceVariableNames asSlotCollection
		classVariables: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		category: aCategory