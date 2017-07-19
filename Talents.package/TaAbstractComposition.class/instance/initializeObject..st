operations
initializeObject: anObject
	| selector |
	selector := self initializeSelectorForMe.

	(anObject class allSelectors includes: selector)
		ifTrue: [ selector value: anObject ]