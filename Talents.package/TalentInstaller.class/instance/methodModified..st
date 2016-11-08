events handling
methodModified: anEvent
	talentedClasses associations
		do:
			[ :assoc | assoc value changeOldMethod: anEvent oldMethod newMethod: anEvent newMethod on: assoc key ]