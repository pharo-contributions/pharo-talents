accessing
sourceCodeAt: selector
	| method |
	method := self compiledMethodAt: selector.
	^ method selector = selector
		ifTrue: [ method sourceCode ]
		ifFalse: [ method getSourceReplacingSelectorWith: selector ]