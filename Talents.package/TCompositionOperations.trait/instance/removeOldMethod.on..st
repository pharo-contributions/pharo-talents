detecting changes
removeOldMethod: oldMethod on: aClass
	| selector |
	selector := self aliasSelector: oldMethod selector.
	
	((self includesClass: oldMethod methodClass) and: [ (self hasMethod: selector) not ])
		ifTrue: [ aClass removeSelector: selector ]