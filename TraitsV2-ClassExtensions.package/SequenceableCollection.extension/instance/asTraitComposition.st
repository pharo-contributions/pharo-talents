*TraitsV2-ClassExtensions
asTraitComposition
	^ self isEmpty
		ifTrue: [ TaEmptyComposition new ]
		ifFalse: [ TaSequence withAll: (self collect: #asTraitComposition) ]