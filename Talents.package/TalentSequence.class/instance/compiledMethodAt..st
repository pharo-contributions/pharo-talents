accessing
compiledMethodAt: aSelector
	self halt.
	^(members detect:[:e | e selectors includes: aSelector ]) compiledMethodAt:aSelector.