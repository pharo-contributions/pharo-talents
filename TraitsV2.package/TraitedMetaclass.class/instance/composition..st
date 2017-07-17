accessing
composition: anObject
	(anObject includesClass: TraitedClassTrait) ifFalse:[self error: 'The metaclass composition should include #TraitedClassTrait'].
	composition := anObject