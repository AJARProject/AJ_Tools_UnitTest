//%attributes = {"invisible":true}
// __UNIT_TEST

$test:=New AJ_Tools_UT_describe("AJ_Tools_UT_getResultText";Current method name:C684;"AJ_Tools_UT Tests")

$test.id:=1
$test.given:="a passed test object"
$test.should:="return the correct result text"

$tested_obj:=OB Copy:C1225($test)
$tested_obj.result:=True:C214
$test.expected:="#1 ok - Given a passed test object: should return the correct result text"
$test.actual:=AJ_Tools_UT_getResultText($tested_obj)
$test.assert()

$test.id:="test2"
$test.given:="a failed test object"
$test.should:="return the correct result text"

$tested_obj:=OB Copy:C1225($test)
$tested_obj.result:=False:C215
$test.expected:="#test2 not ok - Given a failed test object: should return the correct result text"
$test.actual:=AJ_Tools_UT_getResultText($tested_obj)
$test.assert()

