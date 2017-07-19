initialization
rebuildMethodDictionary
	| selectors |
	selectors := composition selectors reject: [ :e | myMethodDict keys includes: e ].
	selectors
		do: [ :e | 
			[ composition compile: e into: self ]
				on: NotFound
				do: [ " I ignore if the selector is not anymore in the composition, is a removed method" ] ].

	methodDict := myMethodDict copy.
	selectors do: [ :e | myMethodDict removeKey: e ifAbsent: [  ] ].
	
	self theMetaClass rebuildMethodDictionary
	