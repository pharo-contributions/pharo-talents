accessing
selectors
	^ (talent selectors reject:[:e | self hasAliasForOld: e]) , self aliases values. 