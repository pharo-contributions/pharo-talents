as yet unclassified
sourceCodeAt: aSelector
	| originalSourceCode parseTree |
	originalSourceCode := super sourceCodeAt: aSelector.

	parseTree := RBParser parseMethod: originalSourceCode.

	^ (RBParseTreeRewriter new
		replace: (self rewriteText: oldSelector) with: (self rewriteText: newSelector);
		executeTree: parseTree;
		tree) formattedCode