validations
validateMethods: aNewTalent
	(self selectors
		noneSatisfy: [ :e | aNewTalent selectors anySatisfy: [ :other | e name = other name ] ])
		ifFalse: [ self error: 'The added talent duplicates an existing selector' ]