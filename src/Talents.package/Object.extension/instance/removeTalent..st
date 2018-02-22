*Talents
removeTalent: aTalent
	^ TalentInstaller uniqueInstance removeTalent: aTalent fromObject:self.
	