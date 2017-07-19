initialization
rebuildMethodDictionary
	| selectors compositionToUse |
	compositionToUse := (superclass isKindOf: self class)
		ifTrue: [ self composition ]
		ifFalse: [ self class traitedClassTrait + self composition ].

	selectors := compositionToUse selectors
		reject: [ :e | myMethodDict keys includes: e ].

	selectors do: [ :e | compositionToUse compile: e into: self ].

	methodDict := myMethodDict copy.

	selectors do: [ :e | myMethodDict removeKey: e ifAbsent: [  ] ]