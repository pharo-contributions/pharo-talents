*Talents
addTalent: aClass
	^ TalentInstaller uniqueInstance addTalent: aClass to:self.
	