events handling
methodAdded: anEvent
	talentedClasses associations
		do: [ :assoc | assoc value addNewMethod: anEvent method on: assoc key ]