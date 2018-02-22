instance creation
remove: anArrayOfSelectors to: aTalent
	^ self new
		removedSelectors: anArrayOfSelectors;
		inner: aTalent;
		yourself