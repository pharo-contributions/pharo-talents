class modifications
configureMetaclass: newMetaclass superclass: superclass withLayoutType: aLayoutType slots: classSlots
	| traitedClassSlots |
	traitedClassSlots := (superclass isKindOf: TraitedMetaclass)
		ifTrue: [ #() ]
		ifFalse: [ TraitedMetaclass traitedClassTrait slots  ].

	newMetaclass superclass: superclass withLayoutType: aLayoutType slots: traitedClassSlots, classSlots , classTraitComposition slots