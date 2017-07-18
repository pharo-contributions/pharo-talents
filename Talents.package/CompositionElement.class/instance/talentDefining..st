accessing
talentDefining: selector
	^ innerClass methods detect: [ :e | e selector = selector ] ifFound: [ :e | self ] ifNone: [ innerClass composition talentDefining: selector ]