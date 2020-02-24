//%attributes = {"invisible":true}
  // AJ_Tools_UT_assert 
  //
  // Used as a member function of a new unit test
  // it will check if all the needed attributes are existing and will run the test

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 12.07.19, 21:46:49
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_assert
	  // Description
	  // It will fill a process variable with the result
	  // At the end will remove all the attributes to prepare to the next test
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 
C_COLLECTION:C1488($col1;$col2)
C_OBJECT:C1216(AJ_Tools_UT_results)

If (AJ_Tools_UT_results=Null:C1517)
	AJ_Tools_UT_results:=New object:C1471
	AJ_Tools_UT_results.tests:=New collection:C1472()
	AJ_Tools_UT_results.result:=True:C214
End if 

$continue:=True:C214
If (This:C1470.given=Null:C1517)
	ASSERT:C1129(False:C215;"Given description is missing")
	$continue:=False:C215
End if 
If (This:C1470.should=Null:C1517)
	ASSERT:C1129(False:C215;"What should do the test?")
	$continue:=False:C215
End if 
If (This:C1470.actual=Null:C1517)
	ASSERT:C1129(False:C215;"Actual result is missing")
	$continue:=False:C215
End if 
If (This:C1470.expected=Null:C1517)
	ASSERT:C1129(False:C215;"Expected result is missing")
	$continue:=False:C215
End if 

If ($continue)
	$col1:=New collection:C1472(This:C1470.expected)
	$col2:=New collection:C1472(This:C1470.actual)
	If (Value type:C1509(This:C1470.expected)=Is real:K8:4)
		This:C1470.result:=$col1.equal($col2)
	Else 
		This:C1470.result:=$col1.equal($col2;ck diacritical:K85:3)
	End if 
	
	
	AJ_Tools_UT_results.result:=AJ_Tools_UT_results.result & This:C1470.result
	AJ_Tools_UT_results.tests.push(OB Copy:C1225(This:C1470))
	
	If (AJ_Tools_UT_results.refWin#Null:C1517)
		CALL FORM:C1391(AJ_Tools_UT_results.refWin;"AJ_Tools_runAll_cb";This:C1470)
		  // Delay to see tests by tests when executed in the window
		DELAY PROCESS:C323(Current process:C322;2)
	End if 
	
	  // Reset the test for the next one
	OB REMOVE:C1226(This:C1470;"given")
	OB REMOVE:C1226(This:C1470;"should")
	OB REMOVE:C1226(This:C1470;"actual")
	OB REMOVE:C1226(This:C1470;"expected")
	OB REMOVE:C1226(This:C1470;"result")
End if 
