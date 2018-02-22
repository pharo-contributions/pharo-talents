*TraitsV2-CompatibilityExtensions
isLocalAliasSelector: aSymbol
	^ (self hasAliasForNew: aSymbol) or: [ inner isLocalAliasSelector: aSymbol ]