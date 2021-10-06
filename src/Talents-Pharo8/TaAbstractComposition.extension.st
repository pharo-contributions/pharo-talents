Extension { #name : #TaAbstractComposition }

{ #category : #'*Talents-Pharo8' }
TaAbstractComposition >> @@ anArrayOfAssociations [

	"This operation creates a new trait composition element with a slot renamed.
	The parameter is an array of association, where the key is the old name and the value the new name."
	
	^ TaRenameSlot rename: anArrayOfAssociations on: self
]
