*TraitsV2-Extensions
asTraitComposition
	^ self isEmpty
		ifTrue: [ TaEmptyComposition new ]
		ifFalse: [ TaSequence withAll: (self collect: #asTraitComposition) ]