tests
testDeepAliasRecursiveMethod
	" The alias is not rewriting the uses of this message inside the talent. A deep alias performs this"
	| x |
	x := Object new.
	x addTalent: (taRecursiveMethodTalent asComposition @= { #otherName: -> #someRecursive:}).
	
	self assert: (x otherName:5) equals:15 .
	self deny: (x class canUnderstand: #someMessage).
