accessing
compiledMethodAt: aSelector
	(removedSelectors includes: aSelector ) ifTrue:[NotFound signalFor: aSelector].
	^ inner compiledMethodAt: aSelector.