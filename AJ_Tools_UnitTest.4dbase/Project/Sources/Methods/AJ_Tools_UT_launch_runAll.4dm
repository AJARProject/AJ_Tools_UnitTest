//%attributes = {}
  // AJ_Tools_UT_launch_runAll ( { $methods } ) 
  //
  // $methods : (collection) (optional) methods to run the tests
  //
  // This method will run all the tests (or partials) on a new process
  // It is used in the context of the main form window that will launch all the tests

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 14.07.19, 14:32:26
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_launch_runAll
	  // 
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 


C_COLLECTION:C1488($1;$methods)
C_LONGINT:C283($2;$refWin)

If (Count parameters:C259=0)
	$methods:=New collection:C1472
Else 
	$methods:=$1
End if 

If (Count parameters:C259=0) | (Count parameters:C259=1)
	$ref_process:=New process:C317(Current method name:C684;0;Current method name:C684;$methods;Current form window:C827)
Else 
	$refWin:=$2
	AJ_Tools_UT_results:=New object:C1471
	AJ_Tools_UT_results.refWin:=$refWin
	If ($methods.length=0)
		$parsedResult:=AJ_Tools_UT_runAll 
	Else 
		$parsedResult:=AJ_Tools_UT_runAll ($methods)
	End if 
	$parsedResult.lastCall:=True:C214
	CALL FORM:C1391($refWin;"AJ_Tools_runAll_cb";$parsedResult)
End if 
