baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'shift-installer' ];

		package: 'Talents' with: [ spec requires: #(AtomicClassInstaller) ];
		package: 'TraitsV2' with: [ spec requires: #(AtomicClassInstaller) ];
		package: 'Talents-Tests' with: [ spec requires: #(core 'Talents-ClassExtensions') ];
		package: 'TraitsV2-Tests' with: [ spec requires: #(core 'Talents-ClassExtensions') ];
		package: 'Talents-ClassExtensions' with: [ spec requires: #(core) ];

		group: 'core'
			with: #(Talents TraitsV2);
		group: 'test'
			with: #('Talents-Tests' 'TraitsV2-Tests')
	]