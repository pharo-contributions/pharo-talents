*TraitsV2-ClassExtensions
subclass: aName uses: aTraitComposition with: aBlock 
	| builder |
	builder := ShiftClassBuilder new.
	aBlock value: builder.
	
	self halt.