//%attributes = {"invisible":true,"shared":true}
  // AJ_Tools_UT_runAll ( { $methods } ) -> $parsedResult
  //
  // $methods : (collection) (optional) methods to run the tests
  // $parsedResult : (object) (return) parsed results of the tests that was run
  //
  // This method will runn all the tests (or partials) and will return a parsed result
  // It will also log the result in the Logs folder

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 13.07.19, 00:26:19
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_runAll
	  // 
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 


C_OBJECT:C1216($0;$parsedResult;AJ_Tools_UT_results)
C_COLLECTION:C1488($1;$methods)
If (AJ_Tools_UT_results.refWin=Null:C1517)
	AJ_Tools_UT_results:=New object:C1471
End if 
AJ_Tools_UT_results.tests:=New collection:C1472()
AJ_Tools_UT_results.result:=True:C214

If (Count parameters:C259=1)
	$methods:=$1
Else 
	ARRAY TEXT:C222($_name;0)
	METHOD GET NAMES:C1166($_name;*)
	$methods:=New collection:C1472
	ARRAY TO COLLECTION:C1563($methods;$_name)
End if 

If (Is compiled mode:C492(*))
	  // In compile mode we cannot get the code of the method so we must run the existing methods
	$path_logs:=Get 4D folder:C485(Logs folder:K5:19;*)+"UnitTestsResults.json"
	If (Test path name:C476($path_logs)=Is a document:K24:1)
		$parsedResult:=JSON Parse:C1218(Document to text:C1236($path_logs;"UTF-8"))
	Else 
		$parsedResult:=New object:C1471("categories";New collection:C1472(New object:C1471("descriptions";New collection:C1472)))
	End if 
End if 

For each ($method_name;$methods)
	If (Is compiled mode:C492(*)=False:C215)  // If the host database is interpreted
		  // We can get the code of every method to analyse if it is a unit test method that we must execute
		METHOD GET CODE:C1190($method_name;$code;*)
		If ($code="@  // __UNIT_TEST@") & ($method_name#Current method name:C684)
			EXECUTE METHOD:C1007($method_name)
		End if 
	Else   // In compile mode
		  // We take all the method that are registered in the existing result file to re-execute all the tests
		If ($parsedResult.categories.query("descriptions[].method = :1";$method_name).length>0)
			EXECUTE METHOD:C1007($method_name)
		End if 
	End if 
End for each 

  // Logs on the server and parse the result
If (Application type:C494=4D Remote mode:K5:5)
	AJ_Tools_UT_results.tests:=AJ_Tools_UT_results.tests.concat(AJ_Tools_UT_fetchResults_cs )
End if 
AJ_Tools_UT_results.lastTestDate:=String:C10(Current date:C33;Internal date long:K1:5)+" - "+String:C10(Current time:C178;HH MM:K7:2)
$parsedResult:=AJ_Tools_UT_parseResults (AJ_Tools_UT_results)

If (Count parameters:C259=0)
	OB REMOVE:C1226(AJ_Tools_UT_results;"refWin")
	AJ_Tools_UT_logResults_cs ($parsedResult)
End if 

$0:=$parsedResult