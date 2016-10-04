validations
validateDuplications: aNewTalent
	(members noneSatisfy: [ :e | e = aNewTalent or: [ e name = aNewTalent name ] ])
		ifFalse:[self error:'Could not include the same talent twice'].