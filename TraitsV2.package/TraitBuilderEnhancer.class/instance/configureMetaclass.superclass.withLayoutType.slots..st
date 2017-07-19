class modifications
configureMetaclass: newMetaclass superclass: superclass withLayoutType: aLayoutType slots: classSlots
	| compositionToUse |
	compositionToUse := (superclass isKindOf: TraitedMetaclass)
		ifTrue: [ classTraitComposition ]
		ifFalse: [ TraitedMetaclass traitedClassTrait + classTraitComposition ].

	newMetaclass superclass: superclass withLayoutType: aLayoutType slots: classSlots , compositionToUse slots