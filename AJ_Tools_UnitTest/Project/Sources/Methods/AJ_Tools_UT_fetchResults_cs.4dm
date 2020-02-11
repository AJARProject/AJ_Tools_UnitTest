//%attributes = {"invisible":true,"executedOnServer":true}
  // AJ_Tools_UT_fetchResults_cs -> AJ_Tools_UT_results.tests
  //
  // AJ_Tools_UT_results.tests : (collection) (return) return the collection of tests executed on the server
  //
  // This is done to be able to test method that have the "execute on server" attribute checked
  // After a test it will fetch the result from the process variable on the server and return it to the client to display the results

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 13.07.19, 01:01:18
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_fetchResults_cs
	  // Description
	  // 
	  // !!! EXECUTE ON SERVER !!!
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 

C_OBJECT:C1216(AJ_Tools_UT_results)
C_COLLECTION:C1488($0)
If (AJ_Tools_UT_results=Null:C1517)
	AJ_Tools_UT_results:=New object:C1471
	AJ_Tools_UT_results.tests:=New collection:C1472()
End if 

$0:=AJ_Tools_UT_results.tests
AJ_Tools_UT_results:=Null:C1517
