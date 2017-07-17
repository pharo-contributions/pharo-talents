accessing
compiledMethodAt: aSelector
	(self hasAliasForOld: aSelector)
		ifTrue: [ NotFound signalFor: aSelector ].

	^ (self hasAliasForNew: aSelector)
		ifTrue: [ talent compiledMethodAt: (self oldSelectorFor: aSelector) ]
		ifFalse: [ talent compiledMethodAt: aSelector ]