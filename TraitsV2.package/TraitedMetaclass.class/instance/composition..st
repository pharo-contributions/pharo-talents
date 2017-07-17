accessing
composition: anObject
	(anObject includesClass: TraitedClassTrait) ifFalse:[self error: 'The metaclass composition should include #T2TraitedClassTrait'].
	composition := anObject