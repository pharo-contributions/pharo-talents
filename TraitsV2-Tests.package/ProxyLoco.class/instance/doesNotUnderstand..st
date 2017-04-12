accessing
doesNotUnderstand: aMessage
	| r |
	(delegate class name , '>>' , aMessage selector printString) logCr.
	r := delegate perform: aMessage selector withArguments: aMessage arguments.

	(r isKindOf: ProxyLoco)
		ifTrue: [ ^ r ]
		ifFalse: [ ^ ProxyLoco for: r ]