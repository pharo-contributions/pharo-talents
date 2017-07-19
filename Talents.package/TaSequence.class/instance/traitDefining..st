accessing
traitDefining: aSelector
	^ members detect: [ :e | e selectors includes: aSelector ]