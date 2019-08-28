C_TEXT:C284($UUID)
C_COLLECTION:C1488($methods;$categories)
C_OBJECT:C1216($description;$category)

GET LIST ITEM PARAMETER:C985(*;"list";*;"category_name";$category_name)
If ($category_name#"")
	$methods:=New collection:C1472
	$categories:=Form:C1466.parsedResult.categories.query("category = :1";$category_name)
	
	If ($categories.length=1)
		$category:=$categories[0]
		
		GET LIST ITEM PARAMETER:C985(*;"list";*;"UUID";$UUID)
		
		For each ($description;$category.descriptions)
			If ($UUID="")
				$methods.push($description.method)
			Else 
				If ($UUID=$description.UUID)
					$methods.push($description.method)
				End if 
			End if 
		End for each 
	End if 
	Form:C1466.methods:=$methods
	Form:C1466.timerCase:="selected"
	SET TIMER:C645(-1)
Else 
	ALERT:C41("Please select an item")
End if 
