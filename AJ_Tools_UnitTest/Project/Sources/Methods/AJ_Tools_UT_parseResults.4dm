//%attributes = {"invisible":true}
  // AJ_Tools_UT_parseResults ( $AJ_Tools_UT_results ) -> $result
  //
  // $AJ_Tools_UT_results : (object) Full description of all the tests results
  // $result : (text) (return) formatted result in a more organized JSON.
  //
  // This will read all the tests run that are in one collection and will split them into category / and test description to have a better overview.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 13.07.19, 17:36:47
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_parseResults
	  // Description
	  // 
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019
End if 
C_OBJECT:C1216($1;$AJ_Tools_UT_results)
C_OBJECT:C1216($0;$result)
C_OBJECT:C1216($result_temp;$description)
C_LONGINT:C283($countPass;$count)

$AJ_Tools_UT_results:=$1
$result:=New object:C1471
$count:=$AJ_Tools_UT_results.tests.length
$countPass:=$AJ_Tools_UT_results.tests.countValues(True:C214;"result")
$result.count:=$count
$result.countPass:=$countPass
$result.countFail:=$count-$countPass
$result.categories:=New collection:C1472


If ($AJ_Tools_UT_results.tests#Null:C1517)
	For each ($test;$AJ_Tools_UT_results.tests)
		
		If ($test.category=Null:C1517)
			$category:="No Category"
		Else 
			$category:=$test.category
		End if 
		If ($result.categories.countValues($category;"category")=0)
			$category_obj:=New object:C1471
			$result.categories.push($category_obj)
			$category_obj.category:=$category
			$category_obj.count:=0
			$category_obj.countPass:=0
			$category_obj.countFail:=0
			$category_obj.descriptions:=New collection:C1472
		Else 
			$category_obj:=$result.categories.query("category = :1";$category)[0]
		End if 
		
		If ($category_obj.descriptions.countValues($test.UUID;"UUID")=0)
			$description:=New object:C1471
			$category_obj.descriptions.push($description)
			$description.UUID:=$test.UUID
			$description.tests:=New collection:C1472
			$description.description:=$test.describe
			$description.count:=0
			$description.countPass:=0
			$description.countFail:=0
		Else 
			$description:=$category_obj.descriptions.query("UUID = :1";$test.UUID)[0]
		End if 
		
		$result_temp:=New object:C1471()
		$result_temp.pass:=$test.result
		
		$result_temp.result:=AJ_Tools_UT_getResultText ($test)
		$result_temp.expected:=$test.expected
		$result_temp.actual:=$test.actual
		
		If ($test.result=False:C215)
			$category_obj.countFail:=$category_obj.countFail+1
			
			$description.countFail:=$description.countFail+1
		Else 
			$category_obj.countPass:=$category_obj.countPass+1
			
			$description.countPass:=$description.countPass+1
		End if 
		
		$category_obj.count:=$category_obj.count+1
		
		$description.count:=$description.count+1
		$description.method:=$test.method
		$description.tests.push($result_temp)
		
	End for each 
End if 

$result.result:=$AJ_Tools_UT_results.result
$result.lastTestDate:=$AJ_Tools_UT_results.lastTestDate
$0:=$result

