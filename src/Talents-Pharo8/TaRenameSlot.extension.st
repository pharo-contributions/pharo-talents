Extension { #name : #TaRenameSlot }

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> copyTraitExpression [
	^ self class rename: renames on: inner
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot class >> rename: anArrayOfAssociations on: aTrait [
	^ self new 
		renames: anArrayOfAssociations;
		inner: aTrait;
		yourself.
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> renames [

	^ renames
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> renames: anObject [

	renames := anObject
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> slots [

	^ inner slots collect: [ :slot | 
		  (renames asDictionary includesKey: slot name)
			  ifTrue: [ 
				  (TaRenamedSlotWrapper for: slot) name: (renames asDictionary at: slot name) ]
			  ifFalse: [ slot ] ]
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> sourceCodeAt: aSelector [
	| originalSourceCode parseTree rewriter |
	originalSourceCode := super sourceCodeAt: aSelector.

	parseTree := RBParser parseMethod: originalSourceCode.
	rewriter := RBParseTreeRewriter new.
	
	renames do: [:rename |
		rewriter replace: rename key asString with: rename value asString ].
	
	^(rewriter	
		executeTree: parseTree;
		tree) formattedCode.
]

{ #category : #'*Talents-Pharo8' }
TaRenameSlot >> traitCompositionExpression [
	
	^ self inner traitCompositionExpressionWithParens , ' @@ ' , renames printString
]
