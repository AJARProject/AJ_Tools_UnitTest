$evt:=FORM Event:C1606

Case of 
	: ($evt.code=On Header Click:K2:40) & ($evt.column=4)
		OBJECT Get pointer:C1124(Object named:K67:5; "id_header")->:=0
		OBJECT Get pointer:C1124(Object named:K67:5; "category_header")->:=0
		OBJECT Get pointer:C1124(Object named:K67:5; "description_header")->:=0
		If (Form:C1466.orderBy=Null:C1517)
			Form:C1466.orderBy:="result asc"
			OBJECT Get pointer:C1124(Object named:K67:5; "pass_header")->:=1
			Else x
			If (Form:C1466.orderBy="result asc")
				Form:C1466.orderBy:="result desc"
				OBJECT Get pointer:C1124(Object named:K67:5; "pass_header")->:=2
			Else 
				Form:C1466.orderBy:="result asc"
				OBJECT Get pointer:C1124(Object named:K67:5; "pass_header")->:=1
			End if 
		End if 
		AJ_Tools_UT_results.tests:=AJ_Tools_UT_results.tests.orderBy(Form:C1466.orderBy)
End case 
