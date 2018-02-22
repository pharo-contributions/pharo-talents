operations
compile: aSelector into: aClass
	aClass compile: aSelector from: self.
	aClass >> aSelector propertyAt: #sourceTrait put: (self traitDefining: aSelector)