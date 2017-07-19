accessing
talentDefining: selector
	| newSelector |
	newSelector := self dealiasSelector: selector.
	
	^ innerClass methods
		detect: [ :e | e selector = newSelector ]
		ifFound: [ :e | self ]
		ifNone: [ innerClass composition talentDefining: newSelector ]