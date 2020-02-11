//%attributes = {"invisible":true}
  // __UNIT_TEST
  // Test object
  //

$given:="an object with some properties"
$should:="be like another object with same properties in a different order (Deep equal)"

$test:=New AJ_Tools_UT_describe ("Test object comparaison if properties are not in the same order";Current method name:C684)
$test.given:=$given
$test.should:=$should
$test.expected:=New object:C1471("B";"b";"A";"A";"c";New object:C1471("c";"c");"col";New collection:C1472(1;2;3))
$test.actual:=New object:C1471("A";"A";"col";New collection:C1472(1;2;3);"c";New object:C1471("c";"c");"B";"b")
$test.assert()

$test.given:=$given
$test.should:=$should
$test.expected:=New object:C1471("B";"b";"A";"A";"c";New object:C1471("c";"c"))
$test.actual:=New object:C1471("A";"A";"c";New object:C1471("c";"c");"B";"b")
$test.assert()
