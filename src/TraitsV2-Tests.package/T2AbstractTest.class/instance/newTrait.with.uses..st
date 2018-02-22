instance creation
newTrait: aName with: slots uses: aComposition
	| class |
	class := T2Trait named: aName uses: aComposition slots: slots category: 'TraitsV2-Tests-TestClasses'  env: self class environment. 
	createdClasses add:class.
	
	^class.