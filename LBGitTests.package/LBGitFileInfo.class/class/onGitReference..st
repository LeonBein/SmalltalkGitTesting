as yet unclassified
onGitReference: aFSReference

	| workingReference  path |
	self halt.
	workingReference := aFSReference fileSystem repository repository instVarNamed: #reference.
	path := ''.
	aFSReference path do: [:each | path := path,'/',each].
	path := path copyFrom: 2 to: path size.
	^ self 
		on: path
		in: workingReference