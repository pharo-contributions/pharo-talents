transforming selectors
aliasSelector: aSelector
	^ members inject: aSelector into:[:acc :each | each aliasSelector: acc]. 