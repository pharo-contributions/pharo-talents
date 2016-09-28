compiling
compile: code
	| method |
	method  := self class compiler
		source: code;
		requestor: nil;
		failBlock: [ ^nil ];
		compile.
		
	method putSource: code
			withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Behavior method'; cr].

	methods add: method.

	^ method selector