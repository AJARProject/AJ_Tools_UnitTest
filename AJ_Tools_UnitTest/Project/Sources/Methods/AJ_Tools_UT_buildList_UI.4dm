//%attributes = {"invisible":true}
  // Build the list of all unit tests in the main form window
  // Copyrights (C) AJAR SA - 2019

C_OBJECT:C1216($category;$description)
C_COLLECTION:C1488($categories;$descriptions)
If (Is a list:C621(Form:C1466.listRef))
	CLEAR LIST:C377(Form:C1466.listRef;*)
End if 
Form:C1466.listRef:=New list:C375

$count:=0
$categories:=Form:C1466.parsedResult.categories.orderBy("category")
For each ($category;$categories)
	$descriptionList:=New list:C375
	
	$descriptions:=$category.descriptions.orderBy("description")
	For each ($description;$descriptions)
		APPEND TO LIST:C376($descriptionList;$description.description;$count)
		SET LIST ITEM PARAMETER:C986($descriptionList;0;"category_name";$category.category)
		SET LIST ITEM PARAMETER:C986($descriptionList;0;"UUID";$description.UUID)
		$count:=$count+1
	End for each 
	
	APPEND TO LIST:C376(Form:C1466.listRef;$category.category;$count;$descriptionList;True:C214)
	SET LIST ITEM PARAMETER:C986(Form:C1466.listRef;0;"category_name";$category.category)
	$count:=$count+1
End for each 

OBJECT SET LIST BY REFERENCE:C1266(*;"list";Form:C1466.listRef)