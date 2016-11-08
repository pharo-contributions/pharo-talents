accessing
hasMethod: aSelector
	[ self compiledMethodAt: aSelector.
	^ true ]
		on: NotFound
		do: [ ^ false ]