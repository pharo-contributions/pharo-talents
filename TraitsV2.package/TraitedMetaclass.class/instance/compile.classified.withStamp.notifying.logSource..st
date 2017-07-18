initialization
compile: text classified: category withStamp: changeStamp notifying: requestor logSource: logSource
	| r |
	r := super compile: text classified: category withStamp: changeStamp notifying: requestor logSource: logSource.
	
	self rebuildMethodDictionary.
	
	^ r