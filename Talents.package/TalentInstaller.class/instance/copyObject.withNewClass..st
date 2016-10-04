operations
copyObject: oldObject withNewClass: newClass
	| newObject |
	newObject := newClass basicNew.

	newClass allSlots
		do: [ :newSlot | 
			oldObject class
				slotNamed: newSlot name
				ifFound: [ :oldSlot | newSlot write: (oldSlot read: oldObject) to: newObject ] ].
	
	^ newObject