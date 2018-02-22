initialization
slots
	^ super slots reject:[ :e  | composition slots includes:e ]