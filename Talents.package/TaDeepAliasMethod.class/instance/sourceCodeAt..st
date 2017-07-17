accessing
sourceCodeAt: aSelector
	| originalSourceCode parseTree rewriter |
	originalSourceCode := super sourceCodeAt: aSelector.
	parseTree := RBParser parseMethod: originalSourceCode.
	rewriter := RBParseTreeRewriter new.
	
	self aliases
		associationsDo:
			[ :assoc | rewriter replace: (self rewriteText: assoc key) with: (self rewriteText: assoc value) ].
	
	^ (rewriter
			executeTree: parseTree;
			tree) formattedCode