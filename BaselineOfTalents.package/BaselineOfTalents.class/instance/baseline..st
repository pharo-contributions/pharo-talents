as yet unclassified
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'AtomicClassInstaller' with: [ spec
			repository: 'github://tesonep/pharo-AtomicClassInstaller/mc';
			loads: 'core' ];

		group: 'core'
			with: #(Talents);
		group: 'dev'
			with: #(core 'Talents-Tests')
	]