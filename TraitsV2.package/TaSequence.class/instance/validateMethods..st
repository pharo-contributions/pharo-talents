validations
validateMethods: aNewTalent
	(self selectors
		noneSatisfy: [ :e | aNewTalent selectors includes: e ])
		ifFalse: [ self error: 'The added talent duplicates an existing selector' ]