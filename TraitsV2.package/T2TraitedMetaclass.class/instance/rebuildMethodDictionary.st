initialization
rebuildMethodDictionary
	| selectors |
	
	selectors := self composition selectors reject:[:e | myMethodDict keys includes: e].
	selectors do:[:e | self composition compile:e into:self ].
	
	methodDict := myMethodDict copy.
	selectors do:[:e | myMethodDict removeKey:e ifAbsent:[]]. 