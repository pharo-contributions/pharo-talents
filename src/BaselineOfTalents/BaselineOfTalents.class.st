Class {
	#name : #BaselineOfTalents,
	#superclass : #BaselineOf,
	#category : #BaselineOfTalents
}

{ #category : #baselines }
BaselineOfTalents >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		package: 'Talents';
		package: 'Talents-Tests' with: [ spec requires: #(Talents) ];

		group: 'core'
			with: #(Talents);
		group: 'test'
			with: #('Talents-Tests')
	].
	spec
		for: #'pharo8.x'
		do: [ spec
			package: 'Talents-Pharo8' with: [ spec requires: #('Talents') ];

			group: 'core'
				with: #('Talents-Pharo8');
			group: 'test'
				with: #('Talents-Tests' 'Talents-Pharo8');

			postLoadDoIt: #'postload:package:'
	]
]

{ #category : #actions }
BaselineOfTalents >> postload: loader package: packageSpec [

	"Add missing instance variable, required for extension method behavior."

	TaRenameSlot addInstVarNamed: #renames
]
