public API
addTrait: aTrait toClass: aClass
	| traitedClass |
	traitedClass := self doCopyClass: aClass withTrait: aTrait asTraitComposition.
	aClass becomeForward: traitedClass copyHash: true.
	^ traitedClass