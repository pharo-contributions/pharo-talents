copying
copySlot: aSlot
	| newOne |
	newOne := aSlot copy.
	newOne isVirtual ifFalse: [ newOne index: nil ].
	^ newOne