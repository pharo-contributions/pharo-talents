*Talents
copyWithoutTalent: aClass
	^ TalentInstaller uniqueInstance
		copyObject: self
		withoutTalent: aClass