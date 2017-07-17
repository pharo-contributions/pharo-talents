accessing
compiledMethodAt: aSelector
	(removedSelectors includes: aSelector ) ifTrue:[NotFound signalFor: aSelector].
	^ talent compiledMethodAt: aSelector.