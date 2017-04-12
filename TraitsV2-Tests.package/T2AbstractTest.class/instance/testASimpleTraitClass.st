tests
testASimpleTraitClass
	| newMetaclass newClass traitComposition metaTraitComposition |
	traitComposition := T2TestClass asComposition.
	metaTraitComposition := T2TraitedClassTrait asComposition , T2TestClass class asComposition.

	newMetaclass := T2TraitedMetaclass new.
	newMetaclass superclass: Object class withLayoutType: FixedLayout slots: metaTraitComposition slots.

	newClass := newMetaclass new.
	newClass setName: #ATraitedClass.

	newClass superclass: Object withLayoutType: FixedLayout slots: traitComposition slots , {(InstanceVariableSlot named: #something)}.
	newClass environment: Smalltalk globals.

	newMetaclass rebuildMethodDictionary.
	newClass initializeTraitedClass.

	newClass composition: traitComposition.
	newMetaclass composition: metaTraitComposition.
	newClass rebuildMethodDictionary.

	Smalltalk environment at: newClass name put: newClass.

	Smalltalk organization classify: newClass name under: #'TraitsV2-Tests-Classes'.

	SystemAnnouncer uniqueInstance classAdded: newClass inCategory: #'TraitsV2-Test-Classes'.

	ATraitedClass new hello.
	ATraitedClass someClassMessage.

	ATraitedClass allSelectors includes: #hello.
	ATraitedClass allMethods