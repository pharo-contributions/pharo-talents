*TraitsV2-CompatibilityExtensions
isAliasSelector: aSymbol
	^ (self hasAliasForNew: aSymbol) or:[ inner isAliasSelector: aSymbol ].