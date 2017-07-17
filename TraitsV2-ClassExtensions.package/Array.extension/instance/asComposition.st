*TraitsV2-ClassExtensions
asComposition
	^ self isEmpty
		ifTrue: [ TaEmptyComposition new ]
		ifFalse: [ TaSequence withAll: self ]