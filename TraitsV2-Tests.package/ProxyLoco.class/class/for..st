instance creation
for: aDelegate
	((aDelegate = true or: [ aDelegate = false ]) or: [ aDelegate isNumber ])
		ifTrue: [ ^ aDelegate ].

	^ self new
		delegate: aDelegate;
		yourself