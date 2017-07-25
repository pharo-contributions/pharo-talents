accessing method dictionary
addSelectorSilently: selector withMethod: compiledMethod
	super addSelectorSilently: selector withMethod: compiledMethod.
	self rebuildMethodDictionary.