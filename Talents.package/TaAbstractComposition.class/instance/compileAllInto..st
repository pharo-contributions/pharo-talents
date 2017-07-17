operations
compileAllInto: aClass
	self selectors
		do: [ :sel | self compile: sel into: aClass ]