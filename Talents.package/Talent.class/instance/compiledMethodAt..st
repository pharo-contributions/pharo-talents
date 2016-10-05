accessing
compiledMethodAt:selector
	| newSelector |
	newSelector := self transformSelector: selector.
	^ innerClass methods detect:[:e | e selector = newSelector]