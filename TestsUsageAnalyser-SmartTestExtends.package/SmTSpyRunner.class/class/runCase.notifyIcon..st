action
runCase: aTestMethod notifyIcon: anIcon
	| aTestResult |
	aTestResult := TestResult new.
	TUATestTools setBySmTMethodSelection.
	[ aTestResult runCaseForDebug: aTestMethod ]
		ensure: [ anIcon labelGraphic: (self iconForTestResultOf: aTestResult) ].
	anIcon labelGraphic: (self iconForTestResultOf: aTestResult).
	aTestResult updateResultsInHistory.
	^aTestResult.