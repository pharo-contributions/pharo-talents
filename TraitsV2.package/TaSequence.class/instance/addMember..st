adding
addMember: anotherTalent
	self validateDuplications: anotherTalent.
	self validateSlots: anotherTalent.
	self validateMethods: anotherTalent.
	
	members add: anotherTalent