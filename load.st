"load.st Universal script with error handling using FileDirectory"

| currentDir filesToLoad allSuccess |

currentDir := FileDirectory default.

filesToLoad := #('Goblin.st').
allSuccess := true.

filesToLoad do: [ :fileName |
	(currentDir fileExists: fileName)
		ifTrue: [
			Transcript show: 'Loading: ', fileName; cr.
			"File in the code using the standard Squeak/Pharo stream reader"
			currentDir fileNamed: fileName do: [ :stream | 
				stream fileIn 
			].
		]
		ifFalse: [
			Transcript show: 'Critical error: File not found — ', fileName; cr.
			allSuccess := false.
			"Abort execution"
			^ self
		].
].

allSuccess ifTrue: [ Transcript show: 'All files loaded successfully!'; cr ].

