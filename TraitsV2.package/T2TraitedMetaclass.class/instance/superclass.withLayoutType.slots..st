as yet unclassified
superclass: aSuperClass withLayoutType: aLayoutType slots: someSlots
	| newSlots |
	newSlots := composition slots , someSlots.

	super superclass: aSuperClass withLayoutType: aLayoutType slots: newSlots