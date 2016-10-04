accessing
transformSelector: oldSelector
	^ oldSelector = self initializeSelectorForMe
		ifTrue: [ ^ #initializeTalent ]
		ifFalse: [ ^ oldSelector ]