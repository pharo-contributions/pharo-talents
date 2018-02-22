as yet unclassified
sourceCodeAt: aSelector
	| originalSourceCode parseTree |
	originalSourceCode := super sourceCodeAt: aSelector.

	parseTree := RBParser parseMethod: originalSourceCode.

	^ (RBParseTreeRewriter new
		replace: oldName asString with: newName asString;
		executeTree: parseTree;
		tree) formattedCode