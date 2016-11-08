detecting changes
changeOldMethod: oldMethod newMethod: newMethod on: aClass
	| modifiedClass transformedSelector |
	modifiedClass := oldMethod methodClass.
	transformedSelector := self aliasSelector: oldMethod selector.
	
	((self includesClass: modifiedClass)
		and: [ (self compiledMethodAt: transformedSelector) = newMethod ])
		ifTrue: [ self compile: transformedSelector into: aClass ]