TalentedClass is an optional usage of talents that provides posibility to store information about talents used by class in the class definition in the form of shared pools. 

During mergin of the class with the talents it merges superclasses of the classes used for talents up to the first common ancestor. You can to the mergin by sending the message #merge.

MyTalentedClass merge.

The merged class can be obtained using:

MyTalentedClass mergedClass.

If you want to subclass your talented class,  you have to use the definition in form: 
MyTalentedClass_merged subclass: ...