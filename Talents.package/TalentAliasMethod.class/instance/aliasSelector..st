transforming selectors
aliasSelector: aSelector
	^ aSelector = oldSelector
		ifTrue: [ newSelector ]
		ifFalse: [ talent aliasSelector: aSelector ]