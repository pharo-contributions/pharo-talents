as yet unclassified
alias:anArrayOfAssociations to: aTrait
	^ self new
		aliases: anArrayOfAssociations asDictionary;
		inner: aTrait;
		yourself.