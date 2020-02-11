//%attributes = {"invisible":true}
C_REAL:C285($0;$1;$2)
Case of 
	: (Count parameters:C259=0)
		$0:=0
	: (Count parameters:C259=1)
		$0:=$1+$1
	Else 
		$0:=$1+$2
End case 