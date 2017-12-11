# Talents for Pharo

Pharo-Talents is a library that provides a clean implementation of Talents for Pharo Smalltalk. 
It is based in a new implementation of the ClassBuilder that allows the creation of really independent classes in the system.

Allowing adding and removing behavior to objects, without modifying the classes.

## Install Talents

```
Iceberg enableMetacelloIntegration: true.

Metacello new
  baseline: 'Talents';
  repository: 'github://tesonep/pharo-talents';
  load.
```

## Usage

### What is a Talent?

A talent is only a class definition. This library uses regular classes as talents. This is in order of reuse the existing 
infrastructure of Pharo. 

When you add a talent to an object all the behavior and slots of the class used as a talent are flatenized in the object. 

In the current implementation is required that the class used as talent is subclass of a class present in the hierarchy of the 
talented object. Normally the talents are subclasses of Object. 

### Adding a Talent

The library provides two ways of adding a talent to an object, the first one returns a copy of the object with the new 
"enhanced" behavior and the second one modifies the receiver of the message.

For creating a copy you should use:

```
newObject := anObject copyWithTalent:aTalent
```

For talenting an existing object:

```
anObject addTalent: aTalent
```


### Removing a Talent

### Composition Operations

### Example
