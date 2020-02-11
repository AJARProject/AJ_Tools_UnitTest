//%attributes = {"invisible":true}
  // AJ_Tools_UT_logResults_cs ( $parsedResult )
  //
  // $parsedResult : (object) parsed result returned by AJ_Tools_UT_runAll
  //
  // Log the results in the logs folder

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 13.07.19, 23:38:22
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_logResults_cs
	  // Description
	  // 
	  // !!! EXECUTE ON SERVER !!!
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 

C_OBJECT:C1216($1;$parsedResult)
$parsedResult:=$1
TEXT TO DOCUMENT:C1237(Get 4D folder:C485(Logs folder:K5:19;*)+"UnitTestsResults.json";JSON Stringify:C1217($parsedResult;*))