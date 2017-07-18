transforming selectors
aliasSelector: aSelector
	^ (self hasAliasForOld: aSelector)
		ifTrue: [ self newSelectorFor: aSelector ]
		ifFalse: [ inner aliasSelector: aSelector ]