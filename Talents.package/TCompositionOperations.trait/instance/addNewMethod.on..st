detecting changes
addNewMethod: newMethod on: aClass
	(self includesClass: newMethod methodClass)
		ifTrue: [ self compile: (self aliasSelector:newMethod selector) into: aClass ]