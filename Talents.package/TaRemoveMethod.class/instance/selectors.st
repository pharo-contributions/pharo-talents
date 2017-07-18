accessing
selectors
	^ inner selectors reject: [ :e | removedSelectors includes: e ]