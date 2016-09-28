as yet unclassified
extendClass: aClass with:aTalent
	| builder newClass |
	builder := ShiftClassBuilder new
		buildEnvironment: ShSmalltalkGlobalsEnvironment new;
		yourself.

	builder 
		name: (aClass name , '_' , aTalent name);
		superclass: aClass.	  
	
	newClass := builder build.

	aTalent selectors do: [:sel | newClass recompile: sel from: aTalent].	

	^ newClass