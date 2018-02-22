accessing
slots
	^ inner slots reject: [ :e | e name = slotName ]