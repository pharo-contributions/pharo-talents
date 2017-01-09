*Talents
removeTalent: aClass
	^ TalentInstaller uniqueInstance removeTalent: aClass from:self.
	