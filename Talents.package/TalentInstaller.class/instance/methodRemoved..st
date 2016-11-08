events handling
methodRemoved: anEvent
	talentedClasses associations
		do: [ :assoc | assoc value removeOldMethod: anEvent method on: assoc key ]