transforming selectors
aliasSelector: selector
	^ selector = #initializeTalent
		ifTrue: [ self initializeSelectorForMe ]
		ifFalse: [ selector ]