operations
without: aTalent
	| newMembers |
	newMembers := members collect:[:e | e without: aTalent] thenSelect:#isNotNil.
	
	newMembers ifEmpty: [ ^ nil ].
	
	^ self class withAll: newMembers.