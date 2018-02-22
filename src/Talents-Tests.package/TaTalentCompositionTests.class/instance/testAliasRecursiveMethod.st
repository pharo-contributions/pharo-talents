tests
testAliasRecursiveMethod
	" The alias is not rewriting the uses of this message inside the talent. A deep alias performs this"
	| x |
	x := Object new.
	x addTalent: (taRecursiveMethodTalent asTraitComposition @ { #otherName: -> #someRecursive: }) - {#otherName:}.
	
	self should: [x otherName:5] raise: MessageNotUnderstood .
	self deny: (x class canUnderstand: #someMessage).
