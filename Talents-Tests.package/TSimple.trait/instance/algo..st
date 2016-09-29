as yet unclassified
algo: x
	^ x = 0
		ifTrue: [ x ]
		ifFalse: [ self algo: x - 1 ]