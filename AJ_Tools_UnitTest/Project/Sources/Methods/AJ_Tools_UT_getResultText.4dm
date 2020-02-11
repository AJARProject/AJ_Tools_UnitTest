//%attributes = {"invisible":true}
  // AJ_Tools_UT_getResultText ( $test ) -> return
  //
  // $test : (object) test object that contain the result of one test
  // $resultTest : (text) (return) formatted result as text
  //
  // This will give a sentence for a test result (ok / not ok)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 14.07.19, 16:50:12
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_getResultText
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 

C_OBJECT:C1216($1;$test)
C_TEXT:C284($0;$resultTest)
$test:=$1

$resultTest:=Choose:C955($test.result;"ok";"not ok")
$resultTest:=$resultTest+" - Given "+String:C10($test.given)+": "
$resultTest:=$resultTest+"should "+$test.should

$0:=$resultTest