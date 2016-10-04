instance creation
from:oldName to: newName on: aTalent
	^ self new 
		oldName: oldName;
		newName: newName;
		talent: aTalent;
		yourself.