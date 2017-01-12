TalentedClass is an optional usage of talents that provides posibility to store information about talents used by a class in its class definition in the form of shared pools. 

During mergin of the class with the talents it merges superclasses of the classes used for talents up to the first common ancestor. You can do the mergin by sending the message #merge (MyTalentedClass is a subclass of TalentedClass):

MyTalentedClass merge.

The merged class can be obtained using:

MyTalentedClass mergedClass.

If you want inherit from your talented class,  you have to use the definition in form: 
MyTalentedClass_merged subclass: ...

NOTICE: bevare of usage of "super" sends in the talents because they will be interpreted in the lookup context of the merged classes and can have different behavior than you expect.