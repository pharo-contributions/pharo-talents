class modifications
classCreated: builder
	builder newMetaclass rebuildMethodDictionary.
	builder newClass initializeTraitedClass.
	
	builder newClass composition: traitComposition.
	builder newMetaclass composition: classTraitComposition.

	builder newClass rebuildMethodDictionary.
	builder newMetaclass rebuildMethodDictionary.
