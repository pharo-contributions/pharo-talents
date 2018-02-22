validations
validateSlots: aNewTalent
	self slots
		do: [ :e | 
			aNewTalent slots
				do: [ :other | 
					e name = other name
						ifTrue: [ self error: 'The added talent duplicates an existing slot ' , e name printString ] ] ]