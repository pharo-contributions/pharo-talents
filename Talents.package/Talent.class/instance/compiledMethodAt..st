accessing
compiledMethodAt:selector
	^ methods detect:[:e | e selector = selector]