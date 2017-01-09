public API
addTrait: aTrait to: aClass 
	| newObject traitedClass |
	
	traitedClass := self doCopyWithTrait: aTrait asTalent to: aClass.  
	aClass becomeForward: traitedClass copyHash: false.
	
	^ traitedClass