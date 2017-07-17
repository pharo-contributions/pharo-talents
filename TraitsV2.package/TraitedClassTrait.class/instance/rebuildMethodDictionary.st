initialization
rebuildMethodDictionary
	| selectors |
	
	selectors := composition selectors reject:[:e | myMethodDict keys includes: e].
	selectors do:[:e | composition compile:e into:self ].
	
	methodDict := myMethodDict copy.
	selectors do:[:e | myMethodDict removeKey:e ifAbsent:[]]. 
	
	self theMetaClass rebuildMethodDictionary.