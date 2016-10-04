accessing
selectors
	" I get all the selectors of the methods in this talent, if there is a #initializeTalent selector I rename it to #initializeTalent_NameOfTalent"

	| originals |
	originals := methods collect: #selector.
	^ (originals includes: #initializeTalent)
		ifTrue: [ (originals reject: [ :e | e = #initializeTalent ]) copyWith: self initializeSelectorForMe ]
		ifFalse: [ originals ]