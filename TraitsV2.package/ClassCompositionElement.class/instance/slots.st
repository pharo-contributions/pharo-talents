accessing
slots
	^ super slots reject: [ :e | TraitedClassTrait slots includes: e ]