instance creation
remove: anArrayOfSelectors to: aTalent
	^ self new
		removedSelectors: anArrayOfSelectors;
		talent: aTalent;
		yourself