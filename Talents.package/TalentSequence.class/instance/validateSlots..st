validations
validateSlots: aNewTalent
	(self slots
		noneSatisfy: [ :e | aNewTalent slots anySatisfy: [ :other | e name = other name ] ])
		ifFalse: [ self error: 'The added talent duplicates an existing slot' ]