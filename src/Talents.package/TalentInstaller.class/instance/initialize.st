initialization
initialize
	talentedClasses := WeakKeyDictionary new.
	
	WeakArray addWeakDependent: talentedClasses.
	
	SystemAnnouncer uniqueInstance weak
		when: MethodAdded send: #methodModified: to: self;
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodModified: to: self.
