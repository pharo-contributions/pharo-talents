accessing
sourceCodeAt: selector
	^ (members detect: [ :e | e selectors includes: selector ]) sourceCodeAt: selector