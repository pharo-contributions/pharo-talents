*TraitsV2-CompatibilityExtensions
isAliasSelector: aSymbol
	^ members anySatisfy: [ :e | e isAliasSelector: aSymbol ]