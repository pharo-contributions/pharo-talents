merging
talentSequenceFor: aClass with: talentClassesCollection

	| addedClasses sequence |

	addedClasses := aClass withAllSuperclasses.
	sequence := TalentSequence new.
	talentClassesCollection do: [ :talentClass |
		talentClass withAllSuperclassesDo: [ :each | 
			(addedClasses includes: each) ifFalse: [
				addedClasses addIfNotPresent: each.
				sequence addMember: each asTalent ]]].
	self generateInitializeTalentsFor: sequence members.
	^ sequence.
	