accessing
sourceCodeAt: aSelector
	^ (self hasAliasForNew: aSelector)
		ifTrue: [ (inner compiledMethodAt: (self oldSelectorFor: aSelector))
				getSourceReplacingSelectorWith: aSelector ]
		ifFalse: [ super sourceCodeAt: aSelector ]