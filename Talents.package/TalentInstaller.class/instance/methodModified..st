events handling
methodModified: anEvent
	talentedClasses associations
		do: [ :assoc | 
			(assoc value includesTrait: anEvent method methodClass)
				ifTrue: [ assoc key rebuildMethodDictionary ] ]