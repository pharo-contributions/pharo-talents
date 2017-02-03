public API
addTrait: aTrait toClass: aClass
	| traitedClass |
	traitedClass := self doCopyClass: aClass withTrait: aTrait asComposition.
	aClass becomeForward: traitedClass copyHash: true.
	^ traitedClass