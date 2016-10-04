initialization
initializeObject: anObject
	members do: [ :e | e initializeObject: anObject ]