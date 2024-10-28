# Talents for Pharo

<a href="https://www.pharo.org">
    <img alt="Pharo" src="https://img.shields.io/static/v1?style=for-the-badge&message=Pharo&color=3297d4&logo=Harbor&logoColor=FFFFFF&label=" />
</a>

Talents are Traits that are installed on single objects.

Pharo-Talents is a library that provides a clean implementation of Talents for Pharo Smalltalk. 
It is based in a new implementation of the ClassBuilder and Traits that allows the creation of really independent classes in the system.

Talents enables adding and removing behavior and state to objects, without modifying the classes.

This is an implementation of the idea presented in the work of [Ressia et al. "Talents: an environment for dynamically composing units of reuse"](http://scg.unibe.ch/archive/papers/Ress12eTalentsSPE.pdf).

## Install Talents

Talents is developed using the new Traits implementation of Pharo8. Install with:

```
Metacello new
  baseline: 'Talents';
  repository: 'github://tesonep/pharo-talents/src';
  load.
```

## Usage

### What is a Talent?

A talent is only a trait definition. This library uses regular traits as talents. This is in order of reuse the existing 
infrastructure of Pharo. 

When you add a talent to an object all the behavior and slots of the trait used as a talent are flatenized in the object. 

Any trait composition can be used to as a talent, allowing more complex talented objects.

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

As any Trait composition can be used as a Talent, we can use the operations in traits. 
For example, we can alias one of the selector in the talent.

```
anObject addTalent: (aTalent @ {#originalSelector -> #aliasSelector}) 
```

### Removing a Talent

Removing a talent is also straight forward.

```
anObject removeTalent: aTalent.
```

If an object has more than one talent only the passed talent is removed from the object.

### Composition Operations

As said before any trait composition operation can be used as talents.

When two talents are added to an object they are sequenced in a trait composition:

```
anObject addTalent: aTalent
anObject addTalent: otherTalent
```

is equivalent to:

```
anObject addTalent: aTalent + otherTalent.
```

Other more complex operations can be performed using the trait algebra. For more details check the class TaAbstractComposition.
