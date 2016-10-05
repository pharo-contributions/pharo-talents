as yet unclassified
newTalent: aName with: slots
	| builder |
	builder := ShiftClassBuilder new
		buildEnvironment: ShSmalltalkGlobalsEnvironment new;
		yourself.

	builder
		name: aName;
		slots: slots;
		superclass: Object.

	^builder build