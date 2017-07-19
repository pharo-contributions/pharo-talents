transforming selectors
dealiasSelector: oldSelector
	^ oldSelector = self initializeSelectorForMe
		ifTrue: [ ^ #initializeTalent ]
		ifFalse: [ ^ oldSelector ]