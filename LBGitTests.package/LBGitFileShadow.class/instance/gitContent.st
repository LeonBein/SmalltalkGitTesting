as yet unclassified
gitContent

	| stream content |
	stream := self gitReference readStream binary.
	content := stream contents.
	stream close.
	^ content