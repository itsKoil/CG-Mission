waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					http://forums.criticalgaming.org/index.php?/forum/4-changelog/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Official Rules", 
				"
					http://forums.criticalgaming.org/index.php?/forum/3-rules/
				"
		]
	];
	
