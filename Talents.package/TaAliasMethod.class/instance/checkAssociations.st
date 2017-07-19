accessing
checkAssociations
	self aliases
		associationsDo: [ :assoc | 
			| old new |
			new := assoc key.
			old := assoc value.
			(inner compiledMethodAt: old) ifNil: [ NotFound signalFor: old ] ]