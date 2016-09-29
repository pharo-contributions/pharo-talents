accessing
compiledMethodAt: aSelector
	aSelector = oldSelector
		ifTrue: [ NotFound signalFor: aSelector ].

	^ aSelector = newSelector
		ifTrue: [ talent compiledMethodAt: oldSelector ]
		ifFalse: [ talent compiledMethodAt: aSelector ]