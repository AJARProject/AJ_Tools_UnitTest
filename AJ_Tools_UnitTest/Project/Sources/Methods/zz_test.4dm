//%attributes = {"invisible":true}
// __UNIT_TEST
If (1=2)  // before R3 and classes
	$test:=New AJ_Tools_UT_describe("Sum()";Current method name:C684;"Math")
	
	$test.given:="no parameters"
	$test.should:="return 0"
	$test.expected:=0
	$test.actual:=zz_sum
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	$test.given:="1 parameter (here 5)"
	$test.should:="return 10 (addition itself)"
	$test.expected:=10
	$test.actual:=zz_sum(5)
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	$test.given:="3 and 3"
	$test.should:="return 6"
	$test.expected:=6
	$test.actual:=zz_sum(3;3)
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	
	$test.given:="1 and 3"
	$test.should:="return 4"
	$test.expected:=4
	$test.actual:=zz_sum(1;3)
	$test.assert()
	
Else   // R3 with classes
	$test:=AJ_UnitTest.new("Sum()";Current method name:C684;"Math")
	
	$test.given:="no parameters"
	$test.should:="return 0"
	$test.expected:=0
	$test.actual:=zz_sum
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	$test.given:="1 parameter (here 5)"
	$test.should:="return 10 (addition itself)"
	$test.expected:=10
	$test.actual:=zz_sum(5)
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	$test.given:="3 and 3"
	$test.should:="return 6"
	$test.expected:=6
	$test.actual:=zz_sum(3;3)
	$test.assert()
	
	//DELAY PROCESS(Current process;Random%120)
	
	$test.given:="1 and 3"
	$test.should:="return 4"
	$test.expected:=4
	$test.actual:=zz_sum(1;3)
	$test.assert()
	
End if 