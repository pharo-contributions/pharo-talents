*TraitsV2-CompatibilityExtensions
isLocalAliasSelector: aSymbol
	^ members anySatisfy: [ :e | e isLocalAliasSelector: aSymbol ]