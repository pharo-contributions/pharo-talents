as yet unclassified
setUp
	taTestTalent := Talent named:#TaTestTalent.
	taTestTalent compile: '
	someMessage
	^ 42.'.
	
	taTestTalentUsingAMessageDefined := Talent named:#TaTestTalentUsingAMessageDefined.
	taTestTalentUsingAMessageDefined compile: '
	anotherMessage
	^ self anInstanceVariable.'.
	
	taTestTalentWithTwoMethods := Talent named: #TaTestTalentWithTwoMethods.
	taTestTalentWithTwoMethods compile: ' aM1 ^ 42'.
	taTestTalentWithTwoMethods compile: ' aM2 ^ 22'.
	
	taRecursiveMethodTalent := Talent named: #TaRecursiveMethodTalent.
	taRecursiveMethodTalent compile: '
		someRecursive: x 
			^ x = 0 ifTrue:[ 0 ] ifFalse:[ x + (self someRecursive: x - 1) ]
	'.
	
	taTalentWithASlot := Talent named: #TaTalentWithASlot.
	taTalentWithASlot slots add: #anSlot => InstanceVariableSlot.
	taTalentWithASlot compile: '
		anSlot
			^ anSlot.
	'.
		taTalentWithASlot compile: '
		anSlot: aValue
			anSlot:=aValue.
	'.
	
	taTalentWithASlotInitialized := Talent named: #TaTalentWithASlotInitiliazed.
	taTalentWithASlotInitialized slots add: #anSlot.
	taTalentWithASlotInitialized compile: '
		anSlot
			^ anSlot.
	'.
	taTalentWithASlotInitialized compile: '
		initializeTalent
			anSlot := 55.
	'.
	
	taAnotherInitializedSlot := Talent named: #TaAnotherInitializedSlot.
	taAnotherInitializedSlot slots add: #anotherSlot.
	taAnotherInitializedSlot compile: '
		anotherSlot
			^ anotherSlot.
	'.
	taAnotherInitializedSlot compile: '
		initializeTalent
			anotherSlot := 93.
	'.
