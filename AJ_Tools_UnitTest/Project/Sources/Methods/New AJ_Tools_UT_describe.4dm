//%attributes = {"invisible":true,"shared":true}
  // New AJ_Tools_UT_describe ( describe  ; method { ; category } ) -> return
  //
  // describe : (text) description of the test
  // method : (text) method that execute the test (must be current method name)
  // category : (text) (optional) category of the test. This is used to separate multiple tests in different categories
  // return : (object) (return) return a unit test object with the assert member function. This object will need 4 parameters (given, should, expected, actual) before to call the assert method
  //
  // Create a new test. A test can then do multiple assert

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 12.07.19, 21:32:33
	  // ----------------------------------------------------
	  // Method: New AJ_Tools_UT_describe
	  // Description
	  // Only one test must be created by method
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 

C_OBJECT:C1216($0;$unitTest_obj)
C_TEXT:C284($1;$2;$3)

$continue:=False:C215
Case of 
	: (Count parameters:C259<2)
	: ($1="")
	: ($2="")
	Else 
		$continue:=True:C214
End case 
ASSERT:C1129($continue;"You must describe your test!")

If ($continue)
	$unitTest_obj:=New object:C1471
	$unitTest_obj.UUID:=Generate UUID:C1066
	$unitTest_obj.describe:=$1
	$unitTest_obj.method:=$2
	If (Count parameters:C259=3)
		$unitTest_obj.category:=$3
	End if 
	$unitTest_obj.assert:=Formula:C1597(AJ_Tools_UT_assert )
	$0:=$unitTest_obj
End if 
