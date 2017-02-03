accessing
includesClass: aClass
	^ members anySatisfy: [ :e | e includesClass: aClass  ]