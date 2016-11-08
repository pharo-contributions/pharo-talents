initialization
initialize
	talentedClasses := WeakKeyDictionary new.
	
	WeakArray addWeakDependent: talentedClasses.
	
	SystemAnnouncer uniqueInstance weak
		when: MethodAdded send: #methodAdded: to: self;
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodRemoved: to: self.
