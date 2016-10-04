as yet unclassified
slots
	^ talent slots
		collect: [ :e | 
			| slot |
			slot := e asSlot.
			slot name = oldName
				ifTrue: [ slot name: newName ].
			slot ]