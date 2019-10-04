//%attributes = {}
$test:=New AJ_Tools_UT_describe 

  //--------------------------------------------------
  // Test 1
$test.given:="no parameters"
$test.should:="return 0"
$test.expected:=0
$test.actual:=zz_sum 
$test.assert()

$result:="Given "+String:C10($test.given)+"\n"
$result:=$result+"Should "+String:C10($test.should)+"\n"
$result:=$result+"Expected "+String:C10($test.expected)+"\n"
$result:=$result+"Actual "+String:C10($test.actual)+"\n"
$result:=$result+"Result "+String:C10($test.result)+"\n"

ALERT:C41($result)
  //--------------------------------------------------


  //--------------------------------------------------
  // Test 2
$test.given:="1 parameter (here 5)"
$test.should:="return 10 (addition itself)"
$test.expected:=10
$test.actual:=zz_sum (5)
$test.assert()

$result:="Given "+String:C10($test.given)+"\n"
$result:=$result+"Should "+String:C10($test.should)+"\n"
$result:=$result+"Expected "+String:C10($test.expected)+"\n"
$result:=$result+"Actual "+String:C10($test.actual)+"\n"
$result:=$result+"Result "+String:C10($test.result)+"\n"

ALERT:C41($result)
  //--------------------------------------------------


  //--------------------------------------------------
  // Test 3
$test.given:="3 and 3"
$test.should:="return 6"
$test.expected:=6
$test.actual:=zz_sum (3;3)
$test.assert()

$result:="Given "+String:C10($test.given)+"\n"
$result:=$result+"Should "+String:C10($test.should)+"\n"
$result:=$result+"Expected "+String:C10($test.expected)+"\n"
$result:=$result+"Actual "+String:C10($test.actual)+"\n"
$result:=$result+"Result "+String:C10($test.result)+"\n"

ALERT:C41($result)
  //--------------------------------------------------


  //--------------------------------------------------
  // Test 4
$test.given:="1 and 3"
$test.should:="return 4"
$test.expected:=4
$test.actual:=zz_sum (1;3)
$test.assert()

$result:="Given "+String:C10($test.given)+"\n"
$result:=$result+"Should "+String:C10($test.should)+"\n"
$result:=$result+"Expected "+String:C10($test.expected)+"\n"
$result:=$result+"Actual "+String:C10($test.actual)+"\n"
$result:=$result+"Result "+String:C10($test.result)+"\n"

ALERT:C41($result)
  //--------------------------------------------------

