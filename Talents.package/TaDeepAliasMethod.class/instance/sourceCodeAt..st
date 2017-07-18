accessing
sourceCodeAt: aSelector
	| originalSourceCode parseTree rewriter |
	originalSourceCode := super sourceCodeAt: aSelector.
	parseTree := RBParser parseMethod: originalSourceCode.
	rewriter := RBParseTreeRewriter new.
	
	self aliases
		associationsDo:
			[ :assoc | rewriter replace: (self rewriteText: assoc value) with: (self rewriteText: assoc key) ].
	
	^ (rewriter
			executeTree: parseTree;
			tree) formattedCode