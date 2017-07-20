accessing
slots
	^ (innerClass slots
		reject: [ :e | TraitedClassTrait slots anySatisfy: [ :x | x name = e name ] ])
		collect: [ :e | self copySlot: e ]