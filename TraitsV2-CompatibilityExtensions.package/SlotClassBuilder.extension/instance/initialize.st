*TraitsV2-CompatibilityExtensions
initialize
	super initialize.
	oldClasses := OrderedCollection new.
	newClasses := OrderedCollection new.
	sharedPoolsString := ''.
	sharedVariables := {}.
	classSlots := {}.
	slots := {}.
	superclass := Object.
	classTraitComposition := TraitComposition new.
	traitComposition := TraitComposition new.