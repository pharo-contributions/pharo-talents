as yet unclassified
extendClass: aClass
	| builder newClass |
	builder := ShiftClassBuilder new
		buildEnvironment: ShSmalltalkGlobalsEnvironment new;
		yourself.

	builder 
		name: (aClass name , '_' , self name);
		superclass: aClass.	  
	
	newClass := builder build.
	
	newClass compileAllFrom: self.

	^ newClass