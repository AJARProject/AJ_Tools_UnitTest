//%attributes = {"invisible":true,"shared":true}
  // AJ_Tools_UT_OnErrCall 
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 28.08.19, 11:52:15
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_OnErrCall
	  // Description
	  // This method cannot be used for ON ERR CALL because it use a process variable that is not shared between the component and the host database.
	  // We therefor recommand you to use this code as an error handler for the test. This method allow you to fully test errors in 4D :
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 

AJ_Tools_UT_Error.errorCode:=Error
AJ_Tools_UT_Error.errorMethod:=Error method
AJ_Tools_UT_Error.errorLine:=Error line
AJ_Tools_UT_Error.errorFormula:=Error formula

If (AJ_Tools_UT_Error.stack=Null:C1517)
	AJ_Tools_UT_Error.stack:=New collection:C1472
End if 

ARRAY LONGINT:C221($_code;0)
ARRAY TEXT:C222($_comp;0)
ARRAY TEXT:C222($_text;0)

GET LAST ERROR STACK:C1015($_code;$_comp;$_text)

$stack:=New collection:C1472
ARRAY TO COLLECTION:C1563($stack;$_code;"code";$_comp;"comp";$_text;"text")
AJ_Tools_UT_Error.stack:=AJ_Tools_UT_Error.stack.concat($stack)