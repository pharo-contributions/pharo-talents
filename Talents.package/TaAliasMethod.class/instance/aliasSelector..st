transforming selectors
aliasSelector: aSelector
	^ (self hasAliasForOld: aSelector)
		ifTrue: [ self newSelectorFor: aSelector ]
		ifFalse: [ talent aliasSelector: aSelector ]