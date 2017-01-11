merging
merge

	| sequence | 
	
	sequence := self talentSequence.
	mergedClass := self copyWithTrait: sequence.
	mergedClass name: (self name, '_merged') asSymbol.
	Smalltalk at: mergedClass name put: mergedClass.
	^ mergedClass