//%attributes = {"invisible":true,"executedOnServer":true}
  // __UNIT_TEST
  // EXECUTE ON SERVER


$test:=New AJ_Tools_UT_describe ("Test method executed on server";Current method name:C684)
$test.given:="3+3"
$test.should:="return 6"
$test.expected:=3+3
$test.actual:=6
$test.assert()

$test.given:="a random number"
$test.should:="be between 0 and 32,767 (inclusive)"
$test.expected:=True:C214
$test.actual:=(Random:C100>=0) & (Random:C100<=32787)
$test.assert()
