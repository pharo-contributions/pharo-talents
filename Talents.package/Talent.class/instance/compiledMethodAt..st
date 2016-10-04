accessing
compiledMethodAt:selector
	| newSelector |
	newSelector := self transformSelector: selector.
	^ methods detect:[:e | e selector = newSelector]