*TraitsV2-Extensions
subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: instVarNames classVariableNames: classVarNames package: aCategory
	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		instanceVariableNames: instVarNames
		classVariableNames: classVarNames
		poolDictionaries: ''
		package: aCategory