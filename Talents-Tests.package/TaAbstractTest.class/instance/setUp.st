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
	'