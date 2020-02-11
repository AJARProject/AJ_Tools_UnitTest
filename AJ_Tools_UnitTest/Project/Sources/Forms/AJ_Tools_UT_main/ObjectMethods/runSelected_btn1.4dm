If (Form:C1466.view="lb")
	Form:C1466.view:="wa"
	OBJECT SET VISIBLE:C603(*;"results_wa";True:C214)
	OBJECT SET VISIBLE:C603(*;"results_lb";False:C215)
Else 
	Form:C1466.view:="lb"
	OBJECT SET VISIBLE:C603(*;"results_wa";False:C215)
	OBJECT SET VISIBLE:C603(*;"results_lb";True:C214)
End if 