operations
compile: aSelector into: aClass
	aClass recompile: aSelector from: self.
	aClass >> aSelector propertyAt: #sourceTalent put: (self talentDefining: aSelector)