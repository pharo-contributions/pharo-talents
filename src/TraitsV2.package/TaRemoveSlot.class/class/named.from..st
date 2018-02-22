instance creation
named: anSlotName from: aTrait
	^ self new
		slotName: anSlotName;
		inner: aTrait;
		yourself.