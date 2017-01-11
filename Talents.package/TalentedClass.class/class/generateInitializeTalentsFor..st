merging
generateInitializeTalentsFor: talents

	| methodCode |
	
	methodCode := String streamContents: [ :s |
		s nextPutAll: 'initializeTalents'; cr; cr.
		s tab; nextPutAll: '"generated"'; cr; cr.
		talents do: [ :each |
			(each innerClass localSelectors includes: #initializeTalent) 
				ifTrue: [ s tab; nextPutAll: 'self '; nextPutAll: each initializeSelectorForMe; nextPutAll: '.'; cr]]].
	
	self compile: methodCode.
	