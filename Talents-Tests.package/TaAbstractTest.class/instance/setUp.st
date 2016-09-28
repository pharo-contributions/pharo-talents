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