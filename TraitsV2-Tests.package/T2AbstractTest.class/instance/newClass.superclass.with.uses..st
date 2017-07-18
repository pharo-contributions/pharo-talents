instance creation
newClass: aName superclass: aSuperclass with: slots uses: aComposition
	| class |
	class := aSuperclass subclass: aName uses: aComposition slots: slots classVariables: '' poolDictionaries: '' category: 'TraitsV2-Tests-TestClasses'. 
	createdClasses add:class.
	
	^class.