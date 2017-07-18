running
setUp
	TalentInstaller reset.
	
	createdClasses := Set new.
	

	taTestTalent := self newTalent:#TaTestTalent.
	taTestTalent compile: '
	someMessage
	^ 42.'.
	
	taTestTalentUsingAMessageDefined := self newTalent:#TaTestTalentUsingAMessageDefined.
	taTestTalentUsingAMessageDefined compile: '
	anotherMessage
	^ self anInstanceVariable.'.
	
	taTestTalentWithTwoMethods := self newTalent: #TaTestTalentWithTwoMethods.
	taTestTalentWithTwoMethods compile: ' aM1 ^ 42'.
	taTestTalentWithTwoMethods compile: ' aM2 ^ 22'.
	
	taRecursiveMethodTalent := self newTalent: #TaRecursiveMethodTalent.
	taRecursiveMethodTalent compile: '
		someRecursive: x 
			^ x = 0 ifTrue:[ 0 ] ifFalse:[ x + (self someRecursive: x - 1) ]
	'.
	
	taTalentWithASlot := self newTalent: #TaTalentWithASlot with: {#anSlot => InstanceVariableSlot}.
	taTalentWithASlot compile: '
		anSlot
			^ anSlot.
	'.
		taTalentWithASlot compile: '
		anSlot: aValue
			anSlot:=aValue.
	'.
	
	taTalentWithASlotInitialized := self newTalent: #TaTalentWithASlotInitiliazed with: #(anSlot).
	taTalentWithASlotInitialized compile: '
		anSlot
			^ anSlot.
	'.
	taTalentWithASlotInitialized compile: '
		initializeTalent
			anSlot := 55.
	'.
	
	taAnotherInitializedSlot := self newTalent: #TaAnotherInitializedSlot with: #(anotherSlot).
	taAnotherInitializedSlot compile: '
		anotherSlot
			^ anotherSlot.
	'.
	taAnotherInitializedSlot compile: '
		initializeTalent
			anotherSlot := 93.
	'.
