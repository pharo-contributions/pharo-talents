accessing method dictionary
allSelectorsBelow: topClass
	topClass = self
		ifTrue: [ ^ #() ].

	^ (super allSelectorsBelow: topClass) , self composition selectors