initialization
initializeObject: anObject
	| selector |
	selector := self initializeSelectorForMe.

	(anObject class canUnderstand: selector)
		ifTrue: [ selector value: anObject ]