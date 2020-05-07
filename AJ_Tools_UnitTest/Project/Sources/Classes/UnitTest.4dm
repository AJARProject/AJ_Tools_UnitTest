Class constructor
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
		  //this:=New object
		This:C1470.UUID:=Generate UUID:C1066
		This:C1470.describe:=$1
		This:C1470.method:=$2
		If (Count parameters:C259=3)
			This:C1470.category:=$3
		End if 
	End if 
	
	
Function assert
	AJ_Tools_UT_assert 