as yet unclassified
testValidateDuplicationOfTalent
	| x |
	x := Object new.
	self should:[x addTalent: taTestTalent , taTestTalent] raise:Error.