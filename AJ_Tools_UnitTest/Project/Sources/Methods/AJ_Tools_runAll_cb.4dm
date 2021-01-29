//%attributes = {"invisible":true}
// AJ_Tools_runAll_cb ( $parsedResult ) 
//
// $parsedResult : (object) parsed result returned by AJ_Tools_UT_runAll
//
// Callback for the run all when used in a main form window 

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): gabriel inzirillo
	// Date and time: 17.07.19, 16:47:33
	// ----------------------------------------------------
	// Method: AJ_Tools_runAll_cb
	//
	// ----------------------------------------------------
	// Copyrights (C) AJAR SA - 2019
End if 

C_OBJECT:C1216($1; $result)
$result:=$1

If ($result.lastCall=Null:C1517)
	// Results
	AJ_Tools_UT_results.tests.unshift($result)
	
Else 
	// Last step
	Case of 
		: (Form:C1466.timerCase="all")
			Form:C1466.parsedResult:=$result
			AJ_Tools_UT_buildList_UI
		: (Form:C1466.timerCase="selected")
	End case 
	
	$template:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"results_template.shtml"; "UTF-8")
	
	PROCESS 4D TAGS:C816($template; $result_html; $result)
	TEXT TO DOCUMENT:C1237(Get 4D folder:C485(Current resources folder:K5:16)+"results.html"; $result_html; "UTF-8")
	
	WA OPEN URL:C1020(*; "results_wa"; Get 4D folder:C485(Current resources folder:K5:16)+"results.html")
	OBJECT SET VISIBLE:C603(*; "results_wa"; True:C214)
	OBJECT SET VISIBLE:C603(*; "results_lb"; False:C215)
	
	Form:C1466.view:="wa"
	Form:C1466.timerCase:=""
End if 