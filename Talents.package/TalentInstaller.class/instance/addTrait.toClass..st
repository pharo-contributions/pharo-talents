public API
addTrait: aTrait toClass: aClass
	| traitedClass |
	traitedClass := self doCopyClass: aClass withTrait: aTrait asTalent.
	aClass becomeForward: traitedClass copyHash: false.
	^ traitedClass