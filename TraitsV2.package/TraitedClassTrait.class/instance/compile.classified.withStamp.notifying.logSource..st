accessing
compile: text classified: aCategory withStamp: changeStamp notifying: requestor logSource: logSource
	| r |
	r := super compile: text classified: aCategory withStamp: changeStamp notifying: requestor logSource: logSource.
	
	self rebuildMethodDictionary.
	
	^ r