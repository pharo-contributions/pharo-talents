accessing
talentDefining: aSelector
	^ members detect: [ :e | e selectors includes: aSelector ]