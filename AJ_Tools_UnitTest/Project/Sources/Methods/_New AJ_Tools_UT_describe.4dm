//%attributes = {"invisible":true}
  // __UNIT_TEST
C_OBJECT:C1216(AJ_Tools_UT_Error)
C_OBJECT:C1216($result)

$test:=New AJ_Tools_UT_describe ("New AJ_Tools_UT_describe";Current method name:C684)

ON ERR CALL:C155("AJ_Tools_UT_OnErrCall")

AJ_Tools_UT_Error:=New object:C1471
$test.given:="no arguments"
$test.should:="raise an error"

$result:=New AJ_Tools_UT_describe 
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"New AJ_Tools_UT_describe")
$test.expected.errorLine:=34
$test.expected.errorFormula:="ASSERT($continue;\"You must describe your test!\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: You must describe your test!"))

$test.actual:=AJ_Tools_UT_Error
$test.assert()


AJ_Tools_UT_Error:=New object:C1471
$test.given:="one argument"
$test.should:="raise an error"
$result:=New AJ_Tools_UT_describe ("description")
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"New AJ_Tools_UT_describe")
$test.expected.errorLine:=34
$test.expected.errorFormula:="ASSERT($continue;\"You must describe your test!\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: You must describe your test!"))
$test.actual:=AJ_Tools_UT_Error
$test.assert()


$test.given:="two arguments"
$test.should:="return a new test object"
$result:=New AJ_Tools_UT_describe ("description";Current method name:C684)
$test.expected:=New object:C1471("UUID";$result.UUID;"describe";"description")
$test.expected.method:=Current method name:C684
$test.expected.assert:=Formula:C1597(AJ_Tools_UT_assert )
$test.actual:=$result
$test.assert()

$test.given:="three arguments"
$test.should:="return a new test object with category defined"
$result:=New AJ_Tools_UT_describe ("description";Current method name:C684;"Category")
$test.expected:=New object:C1471("UUID";$result.UUID;"describe";"description")
$test.expected.method:=Current method name:C684
$test.expected.category:="Category"
$test.expected.assert:=Formula:C1597(AJ_Tools_UT_assert )
$test.actual:=$result
$test.assert()


ON ERR CALL:C155("")