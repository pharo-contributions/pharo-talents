validations
validateSlots: aNewTalent
	self slots do: [ :e | aNewTalent slots anySatisfy: 
			[ :other | 
					e name = other name
						ifTrue: [ 
							aNewTalent inspect.
							members inspect.
							self error: 'The added talent duplicates an existing slot ' , e name printString ] ] ]