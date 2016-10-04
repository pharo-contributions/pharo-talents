as yet unclassified
rewriteText: aSelector
	| stream |
	aSelector numArgs == 0
		ifTrue: [ ^ 'self ' , aSelector asString ].

	stream := WriteStream on: String new.
	stream nextPutAll: 'self '.

	aSelector keywords
		withIndexDo: [ :each :i | 
			stream
				nextPutAll: each;
				nextPutAll: ' ``@arg';
				nextPutAll: i printString;
				nextPut: Character space ].
	^ stream contents