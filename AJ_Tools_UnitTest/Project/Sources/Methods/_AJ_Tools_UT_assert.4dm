//%attributes = {"invisible":true}
  // __UNIT_TEST
C_OBJECT:C1216(AJ_Tools_UT_Error)
C_OBJECT:C1216($tested_obj)

$test:=New AJ_Tools_UT_describe ("AJ_Tools_UT_assert";Current method name:C684;"AJ_Tools_UT Tests")

ON ERR CALL:C155("AJ_Tools_UT_OnErrCall")
AJ_Tools_UT_Error:=New object:C1471
$tested_obj:=New object:C1471
$tested_obj.assert:=Formula:C1597(AJ_Tools_UT_assert )

$test.given:="an empty tested object"
$test.should:="raise and stack 4 errors"
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"AJ_Tools_UT_assert")
$test.expected.errorLine:=42
$test.expected.errorFormula:="ASSERT(False;\"Expected result is missing\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Given description is missing"))
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: What should do the test?"))
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Actual result is missing"))
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Expected result is missing"))
$tested_obj.assert()
$test.actual:=AJ_Tools_UT_Error
$test.assert()


AJ_Tools_UT_Error:=New object:C1471
$test.given:="an tested object with missing given property"
$test.should:="raise 1 error"
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"AJ_Tools_UT_assert")
$test.expected.errorLine:=30
$test.expected.errorFormula:="ASSERT(False;\"Given description is missing\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Given description is missing"))
$tested_obj2:=OB Copy:C1225($tested_obj)
$tested_obj2.should:="anything"
$tested_obj2.expected:="anything"
$tested_obj2.actual:="anything"
$tested_obj2.assert()
$test.actual:=AJ_Tools_UT_Error
$test.assert()


AJ_Tools_UT_Error:=New object:C1471
$test.given:="an tested object with missing should property"
$test.should:="raise 1 error"
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"AJ_Tools_UT_assert")
$test.expected.errorLine:=34
$test.expected.errorFormula:="ASSERT(False;\"What should do the test?\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: What should do the test?"))
$tested_obj2:=OB Copy:C1225($tested_obj)
$tested_obj2.given:="anything"
$tested_obj2.expected:="anything"
$tested_obj2.actual:="anything"
$tested_obj2.assert()
$test.actual:=AJ_Tools_UT_Error
$test.assert()



AJ_Tools_UT_Error:=New object:C1471
$test.given:="an tested object with missing expected property"
$test.should:="raise 1 error"
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"AJ_Tools_UT_assert")
$test.expected.errorLine:=42
$test.expected.errorFormula:="ASSERT(False;\"Expected result is missing\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Expected result is missing"))
$tested_obj2:=OB Copy:C1225($tested_obj)
$tested_obj2.given:="anything"
$tested_obj2.should:="anything"
$tested_obj2.actual:="anything"
$tested_obj2.assert()
$test.actual:=AJ_Tools_UT_Error
$test.assert()


AJ_Tools_UT_Error:=New object:C1471
$test.given:="an tested object with missing actual property"
$test.should:="raise 1 error"
$test.expected:=New object:C1471("errorCode";-10518;"errorMethod";"AJ_Tools_UT_assert")
$test.expected.errorLine:=38
$test.expected.errorFormula:="ASSERT(False;\"Actual result is missing\")"
$test.expected.stack:=New collection:C1472
$test.expected.stack.push(New object:C1471("code";-10518;"comp";"4DRT";"text";"Assert failed: Actual result is missing"))
$tested_obj2:=OB Copy:C1225($tested_obj)
$tested_obj2.given:="anything"
$tested_obj2.should:="anything"
$tested_obj2.expected:="anything"
$tested_obj2.assert()
$test.actual:=AJ_Tools_UT_Error
$test.assert()


ON ERR CALL:C155("")