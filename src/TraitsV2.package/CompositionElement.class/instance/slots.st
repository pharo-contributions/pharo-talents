accessing
slots
	^ innerClass slots collect: [ :e | self copySlot: e ]