operations
compile: aSelector into: aClass
	aClass recompile: aSelector from: self.
	aClass >> aSelector propertyAt: #sourceTrait put: (self traitDefining: aSelector)