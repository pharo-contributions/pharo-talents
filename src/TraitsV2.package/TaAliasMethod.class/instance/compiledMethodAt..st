accessing
compiledMethodAt: aSelector
	(self hasAliasForOld: aSelector)
		ifTrue: [ NotFound signalFor: aSelector ].

	^ (self hasAliasForNew: aSelector)
		ifTrue: [ inner compiledMethodAt: (self oldSelectorFor: aSelector) ]
		ifFalse: [ inner compiledMethodAt: aSelector ]