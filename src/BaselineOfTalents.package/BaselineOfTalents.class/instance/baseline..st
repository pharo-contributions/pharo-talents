baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'Shift' with: [ spec
			repository: 'github://tesonep/shift/src';
			loads: 'core' ];

		package: 'Talents' with: [ spec requires: #(Shift) ];
		package: 'TraitsV2' with: [ spec requires: #(Shift) ];
		package: 'Talents-Tests' with: [ spec requires: #(core extensions) ];
		package: 'TraitsV2-Tests' with: [ spec requires: #(core extensions) ];
		package: 'TraitsV2-Extensions' with: [ spec requires: #(core) ];
		package: 'TraitsV2-CompatibilityExtensions' with: [ spec requires: #(core) ];

		group: 'core'
			with: #(Talents TraitsV2);
		group: 'extensions'
			with: #('TraitsV2-Extensions' 'TraitsV2-CompatibilityExtensions');
		group: 'test'
			with: #('Talents-Tests' 'TraitsV2-Tests')
	]