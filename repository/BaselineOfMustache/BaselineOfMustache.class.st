"
I help loading Mustache
"
Class {
	#name : #BaselineOfMustache,
	#superclass : #BaselineOf,
	#category : #BaselineOfMustache
}

{ #category : #baselines }
BaselineOfMustache >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'JSON'
			with: [ spec repository: 'github://sebastianconcept/JSON:v1.0.2' ].
		spec
			package: 'Mustache-Core';
			package: 'Mustache-Tests'
			with: [ spec requires: #( 'Mustache-Core' ) ];
			package: #'Mustache-Cli' with: [ spec requires: #( 'JSON' ) ].
		spec
			group: 'Core' with: #( 'Mustache-Core' );
			group: 'Tests' with: #( 'Mustache-Tests' );
			group: 'default' with: #( 'Core' 'Tests' #'Mustache-Cli' ) ]
]