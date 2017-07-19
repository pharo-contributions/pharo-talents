*TraitsV2-Extensions
subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames category: aCategory

	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		instanceVariableNames: someInstanceVariableNames
		classVariableNames: someClassVariableNames
		poolDictionaries: someSharedPoolNames
		package: aCategory