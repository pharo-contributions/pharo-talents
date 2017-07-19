as yet unclassified
slots
	^ inner slots
		collect: [ :e | 
			| slot |
			slot := e asSlot.
			slot name = oldName
				ifTrue: [ slot name: newName ].
			slot ]