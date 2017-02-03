accessing
composition: anObject
	(anObject includesClass: T2TraitedClassTrait) ifFalse:[self error: 'The metaclass composition should include #T2TraitedClassTrait'].
	composition := anObject